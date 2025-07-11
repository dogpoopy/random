.class public Lcom/netease/ntunisdk/ApplicationNGWebview;
.super Lcom/netease/ntunisdk/base/SdkApplication;
.source "ApplicationNGWebview.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSDK ApplicationNGWebview"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "ngwebview"

    return-object v0
.end method

.method public getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "activity"

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 41
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 42
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 43
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public handleOnApplicationOnCreate(Landroid/content/Context;Landroid/app/Application;)V
    .locals 1

    const-string p2, "UniSDK ApplicationNGWebview"

    const-string v0, "handleOnApplicationOnCreate..."

    .line 29
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ApplicationNGWebview;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 33
    invoke-static {p2}, Lcom/netease/ntunisdk/ui/UniWebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
