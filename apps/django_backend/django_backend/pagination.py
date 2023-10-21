from collections import OrderedDict

from rest_framework.pagination import PageNumberPagination
from rest_framework.response import Response


class CustomPageNumberPagination(PageNumberPagination):
    def get_paginated_response(self, data):
        return Response(
            OrderedDict(
                [
                    ("count", self.page.paginator.count),
                    ("next", self.get_next_page()),
                    ("previous", self.get_previous_page()),
                    ("current", self.page.number),
                    ("last", self.page.paginator.num_pages),
                    ("results", data),
                ]
            )
        )

    def get_next_page(self):
        return self.page.next_page_number() if self.page.has_next() else None

    def get_previous_page(self):
        return self.page.previous_page_number() if self.page.has_previous() else None

    def get_paginated_response_schema(self, schema):
        return {
            "type": "object",
            "properties": {
                "count": {
                    "type": "integer",
                    "example": 123,
                },
                "previous": {"type": "integer", "nullable": True, "example": 2},
                "current": {"type": "integer", "nullable": True, "example": 3},
                "next": {"type": "integer", "nullable": True, "example": 4},
                "last": {"type": "integer", "nullable": True, "example": 30},
                "results": schema,
            },
        }
