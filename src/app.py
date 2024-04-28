class Employee:
    """Class representing an employee."""
    def __init__(self, id, name, department, position):
        """
        Initialize an Employee object.

        Parameters:
        - id (int): The employee ID.
        - name (str): The employee name.
        - department (str): The employee department.
        - position (str): The employee position.
        """
        self.id = id
        self.name = name
        self.department = department
        self.position = position

class EmployeeDatabase:
    """Class representing a database of employees."""
    def __init__(self):
        """Initialize an empty EmployeeDatabase."""
        self.employees = {}

    def create_employee(self, id, name, department, position):
        """
        Create a new employee and add it to the database.

        Parameters:
        - id (int): The employee ID.
        - name (str): The employee name.
        - department (str): The employee department.
        - position (str): The employee position.

        Returns:
        - str: A message indicating the success or failure of the operation.
        """
        if id in self.employees:
            return "Employee ID already exists"
        else:
            emp = Employee(id, name, department, position)
            self.employees[id] = emp
            return "Employee created successfully"

    def read_employee(self, id):
        """
        Retrieve employee information from the database.

        Parameters:
        - id (int): The employee ID.

        Returns:
        - str: A string containing the employee information.
        """
        if id in self.employees:
            emp = self.employees[id]
            return f"ID: {emp.id}, Name: {emp.name}, Department: {emp.department}, Position: {emp.position}"
        else:
            return "Employee not found"

    def update_employee(self, id, name=None, department=None, position=None):
        """
        Update employee information in the database.

        Parameters:
        - id (int): The employee ID.
        - name (str, optional): The new employee name.
        - department (str, optional): The new employee department.
        - position (str, optional): The new employee position.

        Returns:
        - str: A message indicating the success or failure of the operation.
        """
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
        """
        Delete an employee from the database.

        Parameters:
        - id (int): The employee ID.

        Returns:
        - str: A message indicating the success or failure of the operation.
        """
        if id in self.employees:
            del self.employees[id]
            return "Employee deleted successfully"
        else:
            return "Employee not found"

def print_menu():
    """Print the menu options for the Employee Database."""
    print("Employee Database Menu:")
    print("1. Create Employee")
    print("2. Read Employee")
    print("3. Update Employee")
    print("4. Delete Employee")
    print("5. Exit")

def run_app():
    """Run the Employee Database application."""
    db = EmployeeDatabase()

    while True:
        print_menu()
        choice = input("Enter your choice: ")

        if choice == "1":
            id = int(input("Enter employee ID: "))
            name = input("Enter employee name: ")
            department = input("Enter employee department: ")
            position = input("Enter employee position: ")
            print(db.create_employee(id, name, department, position))
        elif choice == "2":
            id = int(input("Enter employee ID: "))
            print(db.read_employee(id))
        elif choice == "3":
            id = int(input("Enter employee ID: "))
            name = input("Enter new name (leave blank to skip): ")
            department = input("Enter new department (leave blank to skip): ")
            position = input("Enter new position (leave blank to skip): ")
            print(db.update_employee(id, name, department, position))
        elif choice == "4":
            id = int(input("Enter employee ID: "))
            print(db.delete_employee(id))
        elif choice == "5":
            print("Exiting...")
            break
        else:
            print("Invalid choice. Please enter a number from 1 to 5.")

if __name__ == '__main__':
    run_app()
