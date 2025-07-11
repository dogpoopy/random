.class public Lcom/netease/ntunisdk/aidl/NGRemoteService;
.super Landroid/app/Service;
.source "NGRemoteService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ng_webview#ips"

.field public static callback:Lcom/netease/ntunisdk/IRemoteCallback;


# instance fields
.field stub:Lcom/netease/ntunisdk/IRemoteService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/netease/ntunisdk/aidl/NGRemoteService$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/aidl/NGRemoteService$1;-><init>(Lcom/netease/ntunisdk/aidl/NGRemoteService;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/aidl/NGRemoteService;->stub:Lcom/netease/ntunisdk/IRemoteService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/netease/ntunisdk/aidl/NGRemoteService;->stub:Lcom/netease/ntunisdk/IRemoteService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
