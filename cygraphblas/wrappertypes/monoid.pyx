cdef class Monoid:
    def __init__(self):
        raise TypeError('Monoid may not be initialized')

    def __repr__(self):
        return f'Monoid({self.name})'

    @staticmethod
    cdef Monoid _new(str name):
        cdef Monoid obj = Monoid.__new__(Monoid)
        obj.name = name
        return obj
