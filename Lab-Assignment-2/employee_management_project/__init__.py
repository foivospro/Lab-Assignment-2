class EmployeeDatabase:
    def __init__(self):
        self.employees = {}

    def create_employee(self, id, name, department, position):
        if id in self.employees:
            return "Employee ID already exists"
        else:
            emp = Employee(id, name, department, position)
            self.employees[id] = emp
            return "Employee created successfully"

    def read_employee(self, id):
        if id in self.employees:
            emp = self.employees[id]
            return f"ID: {emp.id}, Name: {emp.name}, Department: {emp.department}, Position: {emp.position}"
        else:
            return "Employee not found"

    def update_employee(self, id, name=None, department=None, position=None):
        if id in self.employees:
            emp = self.employees[id]
            if name:
                emp.name = name
            if department:
                emp.department = department
            if position:
                emp.position = position
            return "Employee updated successfully"
        else:
            return "Employee not found"

    def delete_employee(self, id):
        if id in self.employees:
            del self.employees[id]
            return "Employee deleted successfully"
        else:
            return "Employee not found"

