.class public interface abstract Lcom/netease/ntunisdk/base/OnConnectListener;
.super Ljava/lang/Object;
.source "OnConnectListener.java"


# static fields
.field public static final CANCELED:I = 0x5

.field public static final Cancel:I = 0x0

.field public static final Create:I = 0x3

.field public static final FAILED:I = 0x1

.field public static final Load:I = 0x2

.field public static final MODIFIED:I = 0x4

.field public static final NEWID:I = 0x2

.field public static final OK:I = 0x0

.field public static final SIGN_CANCELED:I = 0x6

.field public static final USEDID:I = 0x3

.field public static final Update:I = 0x1


# virtual methods
.method public abstract onConnectToChannelFinished(I)V
.end method

.method public abstract onDisConnectToChannelFinished(I)V
.end method

.method public abstract onSelectChannelOptionFinished(Z)V
.end method
