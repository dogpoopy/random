.class public interface abstract Lcom/netease/mpay/oversea/UnBindCallback;
.super Ljava/lang/Object;
.source "UnBindCallback.java"


# static fields
.field public static final ERR_NETWORK:I = 0xbb9

.field public static final ERR_NOT_SUPPORT_TYPE:I = 0xbbc

.field public static final ERR_REQUIRE_LOGIN:I = 0xbbb

.field public static final ERR_UNBIND_FAILED:I = 0xbba

.field public static final ERR_UNKNOWN:I = 0xbbd


# virtual methods
.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onLogout()V
.end method

.method public abstract onSuccess(Lcom/netease/mpay/oversea/User;)V
.end method
