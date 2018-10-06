# Report

## Test Cases:

1. Write '42' to register 2, verify with Read Ports 1 and 2.
2. Write '15' to register 2, verify with Read Ports 1 and 2.
3. Read register zero with Read Ports 1 and 2 and verify that the read result is actually zero despite any write operation.
4. Test whether Write Enable is broken / ignored by writing to a register with Write Enable false. Verify by reading that register back from Read Ports 1 and 2.
5. Test whether decoder is broken by checking whether the write spilled into other registers. Check by reading the registers back through Read Ports 1 and 2. Test bench written in a for loop.
6. Test whether Port 2 is broken and always reads register as the same number everytime
7. Test whether Port 1 is broken and always read register as the same number every time
