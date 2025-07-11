.class public Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;
.super Ljava/lang/Object;
.source "PermissionRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionRequest"


# instance fields
.field private final PERMISSION_NEED:[Ljava/lang/String;

.field private final json:Lorg/json/JSONObject;

.field private final permissionListener:Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;

.field private weakTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;[Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/PermissionContext;Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    .line 35
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->json:Lorg/json/JSONObject;

    .line 36
    iput-object p2, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->permissionListener:Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;

    const-string p1, "PermissionRequest"

    if-nez p3, :cond_0

    :try_start_0
    const-string p2, "PermissionRequest target is null "

    .line 41
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    invoke-interface {p3}, Lcom/netease/ntunisdk/modules/permission/PermissionContext;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "PermissionRequest context is null "

    .line 48
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_1
    instance-of p3, p2, Landroid/app/Activity;

    if-eqz p3, :cond_3

    .line 53
    check-cast p2, Landroid/app/Activity;

    .line 54
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x11

    if-lt p3, p4, :cond_4

    .line 55
    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p2, "PermissionRequest activity has been destroy "

    .line 56
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_3
    const-string p2, "PermissionRequest context is not activity "

    .line 62
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PermissionRequest Exception "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->permissionListener:Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "PermissionRequest"

    const-string v1, "onPermissionResult"

    .line 129
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->permissionListener:Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;->onPermissionResult(Ljava/lang/String;[ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    :cond_0
    return-void
.end method

.method public proceed(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 7

    .line 76
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    const-string v0, "PermissionRequest"

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const-string p1, "proceed weakTarget is null "

    .line 79
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 82
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string p1, "proceed activity is null or activity is destroy"

    .line 84
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "proceed activity is null"

    .line 89
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    if-eqz v1, :cond_9

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    goto/16 :goto_1

    .line 98
    :cond_4
    array-length v2, v1

    const/16 v4, 0x538

    const/16 v5, 0x17

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "android.permission.SYSTEM_ALERT_WINDOW"

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    aget-object v1, v1, v2

    .line 99
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 100
    :cond_5
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    aget-object p2, p2, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "proceed: "

    const-string v2, "package:"

    if-eqz p2, :cond_6

    .line 101
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_9

    .line 102
    new-instance p2, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v5, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p2, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    invoke-virtual {p1, p2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_9

    .line 109
    new-instance p2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p2, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    invoke-virtual {p1, p2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :cond_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_8

    .line 117
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_8
    const-string p1, "proceed: requestPermissions"

    .line 119
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public refuse([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    return-void
.end method
