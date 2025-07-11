.class public interface abstract Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnHandleExtraDataCallback;
.super Ljava/lang/Object;
.source "NtSdkTagParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnHandleExtraDataCallback"
.end annotation


# static fields
.field public static final LOGIN_ERROR:I = 0x1

.field public static final NETWORK_ERROR:I = 0x2

.field public static final UNKNOWN_ERROR:I = 0x3


# virtual methods
.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
