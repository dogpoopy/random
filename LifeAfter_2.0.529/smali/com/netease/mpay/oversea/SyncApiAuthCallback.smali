.class public interface abstract Lcom/netease/mpay/oversea/SyncApiAuthCallback;
.super Ljava/lang/Object;
.source "SyncApiAuthCallback.java"


# static fields
.field public static final API_ACCOUNT_CHANGED:I = 0xcb

.field public static final API_LOGIN_FAILED:I = 0xcc

.field public static final API_NOT_BOUND:I = 0xca

.field public static final API_NOT_LOGIN:I = 0xc9

.field public static final API_NOT_SUPPORT:I = 0xcd


# virtual methods
.method public abstract onFailure(I)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
