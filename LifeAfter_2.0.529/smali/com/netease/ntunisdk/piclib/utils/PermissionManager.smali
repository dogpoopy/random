.class public Lcom/netease/ntunisdk/piclib/utils/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionManager"

.field private static useTiramisuPermissions:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraPermission()[Ljava/lang/String;
    .locals 1

    const-string v0, "android.permission.CAMERA"

    .line 45
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaPermissions(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/PermissionManager;->useTiramisuPermissions(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 32
    sget-object p0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    if-ne p1, p0, :cond_0

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    sget-object p0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    if-ne p1, p0, :cond_1

    .line 35
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :cond_1
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 40
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static useTiramisuPermissions(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/PermissionManager;->useTiramisuPermissions:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/piclib/utils/PermissionManager;->useTiramisuPermissions:Ljava/lang/Boolean;

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init -> useTiramisuPermissions: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/PermissionManager;->useTiramisuPermissions:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PermissionManager"

    invoke-static {v0, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1
    sget-object p0, Lcom/netease/ntunisdk/piclib/utils/PermissionManager;->useTiramisuPermissions:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
