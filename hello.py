import ptvsd

# Allow other computers to attach to ptvsd at this IP address and port.
ptvsd.enable_attach(address=('0.0.0.0', 3000), redirect_output=True)

# Pause the program until a remote debugger is attached
ptvsd.wait_for_attach()

import os

print('Hello, World')

print(os.environ.get('TEST'))

list_01 = []

for i in range(0,10):
    list_01.append(i)
