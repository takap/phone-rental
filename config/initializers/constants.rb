require 'ostruct'

# Check status
CHECK_STATUS_DB = OpenStruct.new ({
    AVAILABLE: 'available',
    RESERVED: 'reserved',
    READY: 'ready',
    UNAVAILABLE: 'unavailable'
})

CHECK_STATUS_DOMAIN = OpenStruct.new ({
    AVAILABLE: 0,
    RESERVED: 1,
    READY: 2,
    UNAVAILABLE: 3,
    UNAVAILABLE_OVERDUE: 4,
    OWED_BY_CURRENT_USER: 5,
    OWED_BY_CURRENT_USER_OVERDUE: 6
})

CHECK_BUTTON_CLASS = OpenStruct.new ({
    AVAILABLE: 'btn-success',
    RESERVED: 'btn-primary',
    READY: 'btn-info',
    UNAVAILABLE: 'btn-warning',
    UNAVAILABLE_OVERDUE: 'btn-danger',
    OWED_BY_CURRENT_USER: 'btn-warning',
    OWED_BY_CURRENT_USER_OVERDUE: 'btn-danger'
})
