require 'ostruct'

# Check status
CHECK_STATUS_DB = OpenStruct.new ({
    AVAILABLE: 'available',
    RESERVED: 'reserved',
    READY: 'ready',
    CHECKED_OUT: 'checked_out'
})

CHECK_STATUS_DOMAIN = OpenStruct.new ({
    AVAILABLE: 0,
    RESERVED: 1,
    READY: 2,
    CHECKED_OUT: 3,
    CHECKED_OUT_OVERDUE: 4,
    OWED_BY_CURRENT_USER: 5,
    OWED_BY_CURRENT_USER_OVERDUE: 6
})

CHECK_BUTTON_CLASS = OpenStruct.new ({
    AVAILABLE: 'btn-success',
    RESERVED: 'btn-primary',
    READY: 'btn-info',
    CHECKED_OUT: 'btn-warning',
    CHECKED_OUT_OVERDUE: 'btn-danger',
    OWED_BY_CURRENT_USER: 'btn-warning',
    OWED_BY_CURRENT_USER_OVERDUE: 'btn-danger'
})

# Phone category
PHONE_CATEGORY = OpenStruct.new ({
    FEATURE: 1,
    IOS: 2,
    ANDROID: 3
})
