.class public Lcom/netease/ntunisdk/ApplicationExtend;
.super Lcom/netease/ntunisdk/base/SdkApplication;
.source "ApplicationExtend.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ApplicationExtend"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "extend"

    return-object v0
.end method

.method public handleOnApplicationAttachBaseContext(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/netease/ntunisdk/ExtendStartupRecord;->onAttachBaseContext(Landroid/content/Context;)V

    const-string p1, "ApplicationExtend"

    const-string p2, "handleOnApplicationAttachBaseContext..."

    .line 27
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleOnApplicationOnCreate(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0

    const-string p1, "ApplicationExtend"

    const-string p2, "NtSdkApplication onCreate..."

    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
