.class public interface abstract Lcom/netease/mpay/oversea/MpayLoginCallback;
.super Ljava/lang/Object;
.source "MpayLoginCallback.java"

# interfaces
.implements Lcom/netease/mpay/oversea/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CLOSE_USER_CENTER:I = 0x3ec

.field public static final ENTER_GREEN_GAME:I = 0x3f0

.field public static final ERROR_LVU:I = 0x3f1

.field public static final ERROR_LVU_REGISTERED:I = 0x3f2

.field public static final ERR_ACTION_BAN:I = 0x3ef

.field public static final ERR_CANCEL:I = 0x3e8

.field public static final ERR_LOGIN_API_FAILED:I = 0x3eb

.field public static final ERR_LOGIN_FAILED:I = 0x3ea

.field public static final ERR_NETWORK:I = 0x3e9

.field public static final ERR_REQUIRE_LOGIN:I = 0x3ee

.field public static final ERR_UNKNOWN:I = 0x3ed


# virtual methods
.method public abstract onDialogFinish(Lcom/netease/mpay/oversea/User;)V
.end method

.method public abstract onFailure(ILjava/lang/String;I)V
.end method

.method public abstract onLoginSuccess(Lcom/netease/mpay/oversea/User;)V
.end method

.method public abstract onUserLogout()V
.end method
