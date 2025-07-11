.class public Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;
.super Ljava/lang/Object;
.source "ScannerRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AppInfo"
.end annotation


# static fields
.field static appInfoInstance:Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;


# instance fields
.field name:Ljava/lang/String;

.field version:Ljava/lang/String;

.field versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 104
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->name:Ljava/lang/String;

    .line 105
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->version:Ljava/lang/String;

    .line 106
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 109
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    const-string p1, ""

    .line 111
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->name:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->version:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;
    .locals 1

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    sget-object v0, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->appInfoInstance:Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->appInfoInstance:Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;

    .line 95
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    sget-object p0, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->appInfoInstance:Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;

    return-object p0

    :catchall_0
    move-exception v0

    .line 95
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
