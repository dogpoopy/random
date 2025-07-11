.class public Lcom/netease/ntunisdk/core/model/ServerCode;
.super Ljava/lang/Object;


# static fields
.field protected static final ERR_ACCOUNT_CHANGED:I = 0x7d7

.field protected static final ERR_BIND_FAILED:I = 0x65

.field protected static final ERR_DELETE_ACCOUNT:I = 0xc1d

.field protected static final ERR_DEVICE_ID_EXPIRED:I = 0x7d2

.field protected static final ERR_EXTERNAL:I = 0x66

.field protected static final ERR_EXTERNAL_TOKEN_EXPIRED:I = 0x6a

.field protected static final ERR_GAME_NOT_EXISTS:I = 0x7d1

.field protected static final ERR_LOGIN_CONFLICT:I = 0x68

.field protected static final ERR_LOGOUT:I = 0x64

.field protected static final ERR_NEW_ACCOUNT_NO_LOGIN:I = 0x7d8

.field protected static final ERR_PARAMS:I = 0x3e8

.field protected static final ERR_QUICK_LOGIN_ACCOUNT_CHANGED:I = 0x6b

.field protected static final ERR_QUICK_LOGIN_DISABLE:I = 0x6c

.field public static final ERR_RECEIPT:I = 0x3e9

.field protected static final ERR_ROLE_EXIST:I = 0x7d6

.field protected static final ERR_ROLE_NULL:I = 0x7d3

.field public static final ERR_SECOND_VERIFY:I = 0xfa0

.field protected static final ERR_SERVER:I = 0x1388

.field protected static final serialVersionUID:J = -0x3ef27cf979d3d4faL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static covertApiErrorCode(I)I
    .locals 2

    const/16 v0, 0x2712

    if-ne p0, v0, :cond_0

    const/16 p0, 0x2714

    return p0

    :cond_0
    const/16 v1, 0x66

    if-eq p0, v1, :cond_8

    const/16 v1, 0x1388

    if-eq p0, v1, :cond_8

    const/16 v1, 0x6a

    if-eq p0, v1, :cond_8

    const/16 v1, 0x3e8

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7d3

    if-ne p0, v0, :cond_2

    const/16 p0, 0x2718

    return p0

    :cond_2
    invoke-static {p0}, Lcom/netease/ntunisdk/core/model/ServerCode;->isLogout(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/netease/ntunisdk/core/model/ServerCode;->isDeviceValid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x6b

    if-ne p0, v0, :cond_4

    const/16 p0, 0x2725

    return p0

    :cond_4
    const/16 v0, 0x6c

    if-ne p0, v0, :cond_5

    const/16 p0, 0x2726

    return p0

    :cond_5
    const/16 v0, 0xc1d

    if-ne p0, v0, :cond_6

    const/16 p0, 0x2719

    return p0

    :cond_6
    const/16 p0, 0x2711

    return p0

    :cond_7
    :goto_0
    const/16 p0, 0x2715

    return p0

    :cond_8
    :goto_1
    return v0
.end method

.method public static isDeleteAccount(I)Z
    .locals 1

    const/16 v0, 0xc1d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDeviceValid(I)Z
    .locals 1

    const/16 v0, 0x7d2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLoginConflict(I)Z
    .locals 1

    const/16 v0, 0x68

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLogout(I)Z
    .locals 1

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
