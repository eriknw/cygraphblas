cdef class SelectOp:
    def __init__(self):
        raise TypeError('SelectOp may not be initialized')

    def __repr__(self):
        return f'SelectOp({self.name})'

    @staticmethod
    cdef SelectOp _new(str name):
        cdef SelectOp obj = SelectOp.__new__(SelectOp)
        obj.name = name
        return obj
