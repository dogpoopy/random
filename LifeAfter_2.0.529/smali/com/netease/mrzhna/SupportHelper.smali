.class public Lcom/netease/mrzhna/SupportHelper;
.super Ljava/lang/Object;
.source "SupportHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mrzhna/SupportHelper$PermissionCompatDelegate;,
        Lcom/netease/mrzhna/SupportHelper$RequestPermissionsRequestCodeValidator;,
        Lcom/netease/mrzhna/SupportHelper$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_DENIED_APP_OP:I = -0x2

.field public static final PERMISSION_GRANTED:I

.field private static sDelegate:Lcom/netease/mrzhna/SupportHelper$PermissionCompatDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeCompatRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 1

    .line 48
    instance-of v0, p0, Lcom/netease/mrzhna/SupportHelper$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/netease/mrzhna/SupportHelper$RequestPermissionsRequestCodeValidator;

    invoke-interface {v0, p2}, Lcom/netease/mrzhna/SupportHelper$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 96
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "permission is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPermissionCompatDelegate()Lcom/netease/mrzhna/SupportHelper$PermissionCompatDelegate;
    .locals 1

    .line 37
    sget-object v0, Lcom/netease/mrzhna/SupportHelper;->sDelegate:Lcom/netease/mrzhna/SupportHelper$PermissionCompatDelegate;

    return-object v0
.end method

.method public static permissionCheckerCheckSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .line 104
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 105
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return v3

    .line 110
    :cond_0
    invoke-static {p1}, Lcom/netease/mrzhna/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-nez v2, :cond_4

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 116
    array-length v2, v1

    if-gtz v2, :cond_2

    goto :goto_0

    .line 119
    :cond_2
    aget-object v2, v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    return v3

    .line 121
    :cond_4
    :goto_1
    invoke-static {p0, p1, v2}, Lcom/netease/mrzhna/AppOpsManagerCompat;->noteProxyOpNoThrow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, -0x2

    return p0

    :cond_5
    return v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 3

    .line 56
    sget-object v0, Lcom/netease/mrzhna/SupportHelper;->sDelegate:Lcom/netease/mrzhna/SupportHelper$PermissionCompatDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/netease/mrzhna/SupportHelper$PermissionCompatDelegate;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission request for permissions "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not contain null or empty values"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 69
    instance-of v0, p0, Lcom/netease/mrzhna/SupportHelper$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_3

    .line 70
    move-object v0, p0

    check-cast v0, Lcom/netease/mrzhna/SupportHelper$RequestPermissionsRequestCodeValidator;

    invoke-interface {v0, p2}, Lcom/netease/mrzhna/SupportHelper$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 72
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 74
    :cond_4
    instance-of v0, p0, Lcom/netease/mrzhna/SupportHelper$OnRequestPermissionsResultCallback;

    if-eqz v0, :cond_5

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    new-instance v1, Lcom/netease/mrzhna/SupportHelper$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/netease/mrzhna/SupportHelper$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public static setPermissionCompatDelegate(Lcom/netease/mrzhna/SupportHelper$PermissionCompatDelegate;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/netease/mrzhna/SupportHelper;->sDelegate:Lcom/netease/mrzhna/SupportHelper$PermissionCompatDelegate;

    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
