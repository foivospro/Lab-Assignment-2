import unittest
from unittest.mock import patch
from employee_management_project.employee_management import EmployeeDatabase

class TestEmployeeDatabase(unittest.TestCase):

    def setUp(self):
        self.db = EmployeeDatabase()
        self.db.create_employee(1, "John Doe", "IT", "Developer")
        self.db.create_employee(2, "Jane Smith", "HR", "Manager")

    def test_create_employee(self):
        with patch('builtins.input', side_effect=["Alice Johnson", "Marketing", "Analyst"]):
            self.assertEqual(self.db.create_employee(3), "Employee created successfully")
            self.assertEqual(self.db.create_employee(1, "Test User", "Test Dept", "Test Position"), "Employee ID already exists")

    def test_read_employee(self):
        self.assertEqual(self.db.read_employee(1), "ID: 1, Name: John Doe, Department: IT, Position: Developer")
        self.assertEqual(self.db.read_employee(2), "ID: 2, Name: Jane Smith, Department: HR, Position: Manager")
        self.assertEqual(self.db.read_employee(3), "Employee not found")

    def test_update_employee(self):
        self.assertEqual(self.db.update_employee(1, name="Updated Name", position="Senior Developer"), "Employee updated successfully")
        self.assertEqual(self.db.update_employee(3), "Employee not found")

    def test_delete_employee(self):
        self.assertEqual(self.db.delete_employee(2), "Employee deleted successfully")
        self.assertEqual(self.db.delete_employee(3), "Employee not found")

if __name__ == '__main__':
    unittest.main()
