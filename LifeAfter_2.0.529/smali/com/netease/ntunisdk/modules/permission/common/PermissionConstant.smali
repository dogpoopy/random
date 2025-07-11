.class public Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;
.super Ljava/lang/Object;
.source "PermissionConstant.java"


# static fields
.field public static final MIN_SDK_PERMISSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_ARRAY:[Ljava/lang/String;

.field public static final PERMISSION_DENIED_FLAG:I = -0x1

.field public static final PERMISSION_GRANTED_FLAG:I = 0x0

.field public static final PERMISSION_KEY:Ljava/lang/String; = "permission"

.field public static final PERMISSION_NEVER_AGAIN:Ljava/lang/String; = "HAS_BEEN_SET_NEVER_ASK_AGAIN_"

.field public static final PERMISSION_NEVER_AGAIN_FLAG:I = -0x2

.field public static final PERMISSION_SPLIT:Ljava/lang/String; = ","

.field public static final PERMISSION_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android.permission.SYSTEM_ALERT_WINDOW"

.field public static final PERMISSION_WRITE_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SETTINGS"

.field public static final REQUEST_CODE:I = 0x538


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.WRITE_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v2, "android.permission.ACCESS_MEDIA_LOCATION"

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const/16 v3, 0xa

    const-string v4, "android.permission.RECORD_AUDIO"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "android.permission.READ_PHONE_STATE"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "android.permission.CALL_PHONE"

    aput-object v4, v0, v3

    const-string v4, "android.permission.READ_CALL_LOG"

    const/16 v5, 0xd

    aput-object v4, v0, v5

    const-string v5, "android.permission.WRITE_CALL_LOG"

    const/16 v6, 0xe

    aput-object v5, v0, v6

    const/16 v7, 0xf

    const-string v8, "android.permission.ADD_VOICEMAIL"

    aput-object v8, v0, v7

    const/16 v7, 0x10

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "android.permission.USE_SIP"

    aput-object v9, v0, v7

    const/16 v7, 0x11

    const-string v9, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v9, v0, v7

    const-string v7, "android.permission.READ_PHONE_NUMBERS"

    const/16 v9, 0x12

    aput-object v7, v0, v9

    const-string v9, "android.permission.ANSWER_PHONE_CALLS"

    const/16 v10, 0x13

    aput-object v9, v0, v10

    const/16 v10, 0x14

    const-string v11, "android.permission.ACCEPT_HANDOVER"

    aput-object v11, v0, v10

    const/16 v11, 0x15

    const-string v12, "android.permission.BODY_SENSORS"

    aput-object v12, v0, v11

    const/16 v11, 0x16

    const-string v12, "android.permission.BODY_SENSORS_BACKGROUND"

    aput-object v12, v0, v11

    const/16 v11, 0x17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "android.permission.SEND_SMS"

    aput-object v13, v0, v11

    const/16 v11, 0x18

    const-string v13, "android.permission.RECEIVE_SMS"

    aput-object v13, v0, v11

    const/16 v11, 0x19

    const-string v13, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v13, v0, v11

    const/16 v11, 0x1a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "android.permission.RECEIVE_MMS"

    aput-object v14, v0, v11

    const/16 v11, 0x1b

    const-string v14, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v14, v0, v11

    const/16 v11, 0x1c

    const-string v14, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v14, v0, v11

    const/16 v11, 0x1d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "android.permission.ACTIVITY_RECOGNITION"

    aput-object v15, v0, v11

    const/16 v11, 0x1e

    const-string v15, "android.permission.READ_MEDIA_AUDIO"

    aput-object v15, v0, v11

    const/16 v11, 0x1f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "android.permission.READ_MEDIA_IMAGES"

    aput-object v16, v0, v11

    const/16 v11, 0x20

    const-string v16, "android.permission.READ_MEDIA_VIDEO"

    aput-object v16, v0, v11

    const/16 v11, 0x21

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v17, "android.permission.BLUETOOTH_ADVERTISE"

    aput-object v17, v0, v11

    const/16 v11, 0x22

    const-string v17, "android.permission.BLUETOOTH_CONNECT"

    aput-object v17, v0, v11

    const/16 v11, 0x23

    const-string v17, "android.permission.BLUETOOTH_SCAN"

    aput-object v17, v0, v11

    const/16 v11, 0x24

    const-string v17, "android.permission.NEARBY_WIFI_DEVICES"

    aput-object v17, v0, v11

    const/16 v11, 0x25

    const-string v17, "android.permission.POST_NOTIFICATIONS"

    aput-object v17, v0, v11

    const/16 v11, 0x26

    const-string v17, "android.permission.WRITE_SETTINGS"

    aput-object v17, v0, v11

    const/16 v11, 0x27

    const-string v17, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v17, v0, v11

    const/16 v11, 0x28

    const-string v17, "android.permission.READ_SMS"

    aput-object v17, v0, v11

    const/16 v11, 0x29

    const-string v17, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    aput-object v17, v0, v11

    sput-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->PERMISSION_ARRAY:[Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    .line 69
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v0, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v0, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const/16 v3, 0x1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android.permission.ACCEPT_HANDOVER"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v3, "android.permission.ACTIVITY_RECOGNITION"

    invoke-interface {v0, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/common/PermissionConstant;->MIN_SDK_PERMISSIONS:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
