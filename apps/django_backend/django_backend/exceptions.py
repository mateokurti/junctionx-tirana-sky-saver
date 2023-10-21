from rest_framework.views import exception_handler


def build_response(data: dict):
    customized_response = {"errors": []}
    for key, value in data.items():
        if key == "detail":
            customized_response[key] = value
            continue
        v = "\n".join(value) if isinstance(value, list | tuple) else value
        error = {"field": key, "message": v}
        customized_response["errors"].append(error)
    return customized_response


def custom_exception_handler(exc, context):
    # Call REST framework's default exception handler first,
    # to get the standard error response.
    response = exception_handler(exc, context)

    # Update the structure of the response data.
    if response is not None and response.status_code in (400,):
        if isinstance(response.data, list):
            customized_response = [build_response(obj) for obj in response.data]
        else:
            customized_response = build_response(response.data)

        response.data = customized_response

    return response
