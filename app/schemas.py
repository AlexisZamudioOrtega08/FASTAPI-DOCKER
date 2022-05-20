from pydantic import BaseModel, validator


class Employee(BaseModel):
    id: int
    name: str

    @validator("name")
    def validate_name(cls, v):
        if not v:
            raise ValueError("Name is required")
        if len(v) < 3:
            raise ValueError("Name must be at least 3 characters long")
        return v
