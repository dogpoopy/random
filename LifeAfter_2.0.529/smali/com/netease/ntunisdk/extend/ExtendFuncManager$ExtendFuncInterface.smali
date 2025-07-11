.class public interface abstract Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;
.super Ljava/lang/Object;
.source "ExtendFuncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/extend/ExtendFuncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtendFuncInterface"
.end annotation


# virtual methods
.method public abstract extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
.end method

.method public varargs abstract extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;[Ljava/lang/Object;)V
.end method

.method public abstract getMethodIds()[Ljava/lang/String;
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
.end method

.method public abstract onResume(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
.end method
