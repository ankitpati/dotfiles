from typing import Dict, List, Tuple, Union
from datetime import datetime

Row = Tuple[Union[int, float, bool, str, bytes], ...]


class Cursor:
    def execute(self, *args: Union[str, Dict[str, datetime]]) -> None: ...
    def fetchall(self) -> List[Row]: ...


class Connection:
    def __init__(self, connection_string: str) -> None: ...
    def cursor(self) -> Cursor: ...


class connect(Connection):
    def __init__(self, connection_string: str) -> None: ...
