import jpype
import jpype.imports
import os

# Sæt JAVA_HOME manuelt, hvis nødvendigt
jvm_path = jpype.getDefaultJVMPath()
print(f"JVM path: {jvm_path}")

try:
    # Start JVM
    jpype.startJVM(jvm_path)
    print("JVM started successfully")

    # Stop JVM
    jpype.shutdownJVM()
except Exception as e:
    print(f"An error occurred: {e}")
