.class public interface abstract Lcom/netease/mpay/oversea/MpayBindCallback;
.super Ljava/lang/Object;
.source "MpayBindCallback.java"


# static fields
.field public static final CLOSE_USER_CENTER:I = 0x3ec

.field public static final ENTER_GREEN_GAME:I = 0x3f0

.field public static final ERR_BIND_FAILED:I = 0x3eb

.field public static final ERR_LOGIN_FAILED:I = 0x3ea

.field public static final ERR_NETWORK:I = 0x3e9

.field public static final ERR_NOT_SUPPORT_TYPE:I = 0x3ef

.field public static final ERR_REQUIRE_LOGIN:I = 0x3ee

.field public static final ERR_UNKNOWN:I = 0x3ed


# virtual methods
.method public abstract onBindSuccess(Lcom/netease/mpay/oversea/User;)V
.end method

.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onUserLogout()V
.end method
