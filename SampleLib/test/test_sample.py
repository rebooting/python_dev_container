
import unittest
import os
from unittest.mock import patch

import sys
sys.path.append("../")

from libsample import sample

class TestSample(unittest.TestCase):
    def test_sample(self):
        self.assertEqual(sample.sample_example(), "Hello World")