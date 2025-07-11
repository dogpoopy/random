.class synthetic Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$d;
.super Ljava/lang/Object;
.source "DMMLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->values()[Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$d;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->RequireLogin:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$d;->b:[I

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->AccessTokenExpired:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$d;->b:[I

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NotPublishedIntSession:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$d;->b:[I

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->CheckUserError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$d;->b:[I

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->OlgIdValidityError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 2
    :catch_4
    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->values()[Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$d;->a:[I

    :try_start_5
    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->REQUIRE_LOGIN:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$d;->a:[I

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->ACCESS_TOKEN_EXPIRED:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
