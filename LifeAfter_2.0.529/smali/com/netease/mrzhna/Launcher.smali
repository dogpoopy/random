.class public Lcom/netease/mrzhna/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mrzhna/Launcher$CopyFile;,
        Lcom/netease/mrzhna/Launcher$StorageStatus;,
        Lcom/netease/mrzhna/Launcher$AssetInfo;,
        Lcom/netease/mrzhna/Launcher$PatchFile;,
        Lcom/netease/mrzhna/Launcher$CheckObbDeliver;,
        Lcom/netease/mrzhna/Launcher$CheckObbDeliverHandler;,
        Lcom/netease/mrzhna/Launcher$PatchHandler;,
        Lcom/netease/mrzhna/Launcher$UpdateHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FIRST_CHECK_REQUEST_CODE:I = 0xff01

.field private static final KITKAT_UI_OPTION:I = 0xf06

.field public static final OBB_DEVELIVER_MD5_CHECK_FAIL:I = 0x1

.field public static final OBB_DEVELIVER_NOT_EXIST:I = 0x0

.field public static final OBB_DEVELIVER_SUCCESS:I = 0x2

.field private static final OTHER_UI_OPTION:I = 0x505

.field private static final PERMISSION_INTERNAL_LOG_FILE:Ljava/lang/String; = "__p_i_l_file_"

.field private static final PERMISSION_INTERNAL_LOG_KEY:Ljava/lang/String; = "__p_i_l_key_"

.field private static final SECOND_CHECK_REQUEST_CODE:I = 0xff02

.field public static final STORAGE_DATA:I = 0x2

.field public static final STORAGE_EXTERNAL:I = 0x1

.field public static final STORAGE_INTERNAL:I


# instance fields
.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mInternalState:I

.field private mPermissions:[Ljava/lang/String;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field private mSkipNotification:Z

.field private m_ObbFileName:Ljava/lang/String;

.field private m_ObbFilePath:Ljava/lang/String;

.field m_asset_filelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_asset_to_copy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mrzhna/Launcher$AssetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_copy_file:Lcom/netease/mrzhna/Launcher$CopyFile;

.field private m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

.field private m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

.field private m_glclear_color:[F

.field private m_is_gl_loaded:Z

.field private m_launcher:Lcom/netease/mrzhna/Launcher;

.field private m_md5check:I

.field private m_need_remove_shader_cache:Ljava/lang/Boolean;

.field private m_neox_root:Ljava/lang/String;

.field private m_package_name:Ljava/lang/String;

.field private m_patch_file:Lcom/netease/mrzhna/Launcher$PatchFile;

.field private m_patch_obb_md5check:I

.field private m_patch_progress_dlg:Landroid/app/ProgressDialog;

.field private m_platform_config:Lcom/netease/mrzhna/PlatformConfigParser;

.field private m_progress_dlg:Landroid/app/ProgressDialog;

.field private m_size_to_copy:J

.field private m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

.field private m_texture:I

.field private m_timer:Ljava/util/Timer;

.field private m_version_code:I

.field private m_view:Landroid/opengl/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 152
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_glclear_color:[F

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/mrzhna/Launcher$StorageStatus;

    .line 217
    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    .line 219
    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 220
    iput-wide v1, p0, Lcom/netease/mrzhna/Launcher;->m_size_to_copy:J

    const/4 v1, 0x0

    .line 221
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    .line 223
    iput v1, p0, Lcom/netease/mrzhna/Launcher;->m_md5check:I

    .line 224
    iput v1, p0, Lcom/netease/mrzhna/Launcher;->m_patch_obb_md5check:I

    const/4 v2, -0x1

    .line 227
    iput v2, p0, Lcom/netease/mrzhna/Launcher;->m_version_code:I

    .line 228
    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_package_name:Ljava/lang/String;

    const-string v0, ""

    .line 230
    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_ObbFilePath:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_ObbFileName:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v2

    .line 1634
    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->mPermissions:[Ljava/lang/String;

    .line 1647
    iput-boolean v1, p0, Lcom/netease/mrzhna/Launcher;->mSkipNotification:Z

    .line 1653
    iput v1, p0, Lcom/netease/mrzhna/Launcher;->mInternalState:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/mrzhna/Launcher;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/mrzhna/Launcher;)Ljava/util/HashMap;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/mrzhna/Launcher;)Landroid/app/ProgressDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher$CopyFile;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->m_copy_file:Lcom/netease/mrzhna/Launcher$CopyFile;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/netease/mrzhna/Launcher;)J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/netease/mrzhna/Launcher;->m_size_to_copy:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/netease/mrzhna/Launcher;)Ljava/util/Timer;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->m_timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/netease/mrzhna/Launcher;)Landroid/app/ProgressDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1800(Landroid/app/Activity;)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/netease/mrzhna/Launcher;->toSettingPage(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/netease/mrzhna/Launcher;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->finishSelf()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/mrzhna/Launcher;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/netease/mrzhna/Launcher;->m_is_gl_loaded:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/netease/mrzhna/Launcher;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->acquireAppPermissionInSysSettings()V

    return-void
.end method

.method static synthetic access$202(Lcom/netease/mrzhna/Launcher;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/netease/mrzhna/Launcher;->m_is_gl_loaded:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/netease/mrzhna/Launcher;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->changeBG()V

    return-void
.end method

.method static synthetic access$2200(Lcom/netease/mrzhna/Launcher;)Ljava/io/File;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->getObbFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/netease/mrzhna/Launcher;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->usePatchObbFile()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/netease/mrzhna/Launcher;)Ljava/io/File;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->getPatchObbFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/netease/mrzhna/Launcher;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/netease/mrzhna/Launcher;Lcom/google/android/vending/expansion/downloader/IDownloaderService;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/netease/mrzhna/Launcher;)Lcom/google/android/vending/expansion/downloader/IStub;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/Launcher;->show_dialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/netease/mrzhna/Launcher;)Landroid/app/ProgressDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/PlatformConfigParser;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->m_platform_config:Lcom/netease/mrzhna/PlatformConfigParser;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/mrzhna/Launcher;)[Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->mPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/netease/mrzhna/Launcher;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher;->mPermissions:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lcom/netease/mrzhna/Launcher;->getUngrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/mrzhna/Launcher;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->showPopupX()V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/netease/mrzhna/Launcher;)[F
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netease/mrzhna/Launcher;->m_glclear_color:[F

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/mrzhna/Launcher;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->runGame()V

    return-void
.end method

.method private acquireAppPermissionInSysSettings()V
    .locals 4

    const-string v0, "[azx]"

    const-string v1, "LauncherOversea.acquireAppPermissionInSysSettings"

    .line 1802
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1803
    iput v0, p0, Lcom/netease/mrzhna/Launcher;->mInternalState:I

    .line 1804
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 1805
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1806
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private canAccessFile()Z
    .locals 3

    .line 1555
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_ObbFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_ObbFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1558
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    .line 1560
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1562
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private changeBG()V
    .locals 6

    const-string v0, "NEOX_G66_OBB"

    const-string v1, "changeBG"

    .line 2234
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    iget v0, p0, Lcom/netease/mrzhna/Launcher;->m_texture:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v2, 0x2601

    .line 2236
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 2237
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 2238
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 2239
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2240
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    .line 2241
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 2242
    iget-object v3, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v3}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    const-string v5, "black"

    invoke-direct {v4, v5}, Lcom/netease/mrzhna/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2243
    invoke-static {v1, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 2244
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private checkCoveringInstal()V
    .locals 4

    const-string v0, "neox_config"

    const/4 v1, 0x0

    .line 2205
    invoke-virtual {p0, v0, v1}, Lcom/netease/mrzhna/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "NeoXRoot"

    const/4 v3, 0x0

    .line 2206
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "APK_VERSION"

    .line 2210
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2211
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->getApkVersion()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2214
    invoke-static {v2}, Lcom/netease/mrzhna/Launcher;->removeDirectory(Ljava/lang/String;)Z

    .line 2216
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in launch, pre_apk_version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cur_apk_version:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeoXDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static checkSinglePermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1660
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    .line 1661
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v3

    :cond_2
    return v0
.end method

.method private checkSinglePermissionRationale(Ljava/lang/String;)Z
    .locals 0

    .line 1932
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Launcher;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private static collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 115
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "\t"

    .line 117
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 118
    aget-object v2, p0, v2

    const-string v3, "\\\\"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-object p0, p0, v3

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private downloadObbFile()V
    .locals 5

    const-string v0, "NEOX_G66_OBB"

    const-string v1, "downloadObbFile 1"

    .line 2395
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x14000000

    .line 2397
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2403
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    const/high16 v2, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x8000000

    .line 2408
    :goto_0
    iget-object v3, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2412
    :try_start_0
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    const-class v3, Lcom/netease/mrzhna/ObbDownloaderService;

    invoke-static {v2, v1, v3}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v1

    .line 2413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDownloadServiceIfRequired returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const-string v1, "DownloaderClientMarshaller.CreateStub"

    .line 2419
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    new-instance v0, Lcom/netease/mrzhna/Launcher$21;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/Launcher$21;-><init>(Lcom/netease/mrzhna/Launcher;)V

    const-class v1, Lcom/netease/mrzhna/ObbDownloaderService;

    invoke-static {v0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 2501
    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 2415
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void
.end method

.method private existAnyNeverAskAgainPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1914
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 1915
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->checkSinglePermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1921
    :cond_1
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LauncherOversea.existAnyNeverAskAgainPermission  result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[azx]"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private finishSelf()V
    .locals 3

    const-string v0, "[azx]"

    const-string v1, "LauncherOversea.finishSelf"

    .line 1851
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "neox_permission_last_confirm"

    .line 1854
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1855
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "neox_confirm"

    .line 1856
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Launcher$16;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$16;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1864
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private getApkVersion()I
    .locals 3

    const/4 v0, 0x0

    .line 2223
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2224
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2225
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v1, "NeoXDevice"

    const-string v2, "Error in getting apk version"

    .line 2227
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static getCoreNumber()I
    .locals 2

    .line 87
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/netease/mrzhna/Launcher$1CpuFilter;

    invoke-direct {v1}, Lcom/netease/mrzhna/Launcher$1CpuFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 91
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 3

    .line 182
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .line 1941
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x400

    new-array v2, v0, [B

    :try_start_0
    const-string v3, "MD5"

    .line 1952
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1953
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    const/4 p0, 0x0

    .line 1954
    invoke-virtual {v4, v2, p0, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1956
    invoke-virtual {v3, v2, p0, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 1959
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1964
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    .line 1965
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1966
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    :goto_1
    if-ge p0, v1, :cond_2

    .line 1968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 1971
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 1961
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private getNetworkType()I
    .locals 1

    const-string v0, "connectivity"

    .line 1439
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1440
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1443
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private getObbFile()Ljava/io/File;
    .locals 8

    .line 1975
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_package_name:Ljava/lang/String;

    .line 1977
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_package_name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/netease/mrzhna/Launcher;->m_version_code:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1983
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/netease/mrzhna/Launcher;->m_version_code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/netease/mrzhna/Launcher;->m_package_name:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "main.%d.%s.obb"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NEOX_G66_OBB"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "version: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/netease/mrzhna/Launcher;->m_version_code:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v2, "%d"

    invoke-static {v6, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    .line 1979
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getPatchObbFile()Ljava/io/File;
    .locals 8

    .line 1992
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_package_name:Ljava/lang/String;

    .line 1994
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_package_name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/netease/mrzhna/Launcher;->m_version_code:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2000
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/netease/mrzhna/Launcher;->m_version_code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/netease/mrzhna/Launcher;->m_package_name:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "patch.%d.%s.obb"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NEOX_G66_OBB"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "version: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/netease/mrzhna/Launcher;->m_version_code:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v2, "%d"

    invoke-static {v6, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    .line 1996
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getStat(Ljava/lang/String;)J
    .locals 5

    .line 103
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    .line 105
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v3, p0

    mul-long v3, v3, v1

    return-wide v3
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private static getUngrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1673
    array-length v2, p1

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    .line 1674
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1675
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1677
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1681
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v2, p0, [Ljava/lang/String;

    :goto_1
    if-ge v1, p0, :cond_2

    .line 1684
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, p1, v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public static removeDirectory(Ljava/lang/String;)Z
    .locals 4

    .line 1531
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1534
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1536
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1537
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    .line 1538
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 1539
    aget-object v2, p0, v1

    .line 1540
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1541
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1542
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1543
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mrzhna/Launcher;->removeDirectory(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1546
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1549
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private removeOldApp()V
    .locals 7

    const-string v0, "user_data.xml"

    const-string v1, "NeoXDevice"

    .line 1469
    new-instance v2, Lcom/netease/mrzhna/UserDataParser;

    invoke-direct {v2}, Lcom/netease/mrzhna/UserDataParser;-><init>()V

    const/4 v3, 0x0

    .line 1472
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Counld not find user_data.xml in assets"

    .line 1477
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v3

    :goto_0
    if-nez v4, :cond_0

    return-void

    .line 1485
    :cond_0
    invoke-virtual {v2, v4}, Lcom/netease/mrzhna/UserDataParser;->parse(Ljava/io/InputStream;)V

    .line 1486
    invoke-virtual {v2}, Lcom/netease/mrzhna/UserDataParser;->hasTimestamp()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "could not find timestamp in asset user_data.xml"

    .line 1489
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1493
    :cond_1
    invoke-virtual {v2}, Lcom/netease/mrzhna/UserDataParser;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    .line 1496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asset timestamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "Counld not find user_data.xml in filesystem"

    .line 1505
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz v3, :cond_2

    .line 1512
    new-instance v0, Lcom/netease/mrzhna/UserDataParser;

    invoke-direct {v0}, Lcom/netease/mrzhna/UserDataParser;-><init>()V

    .line 1513
    invoke-virtual {v0, v3}, Lcom/netease/mrzhna/UserDataParser;->parse(Ljava/io/InputStream;)V

    .line 1514
    invoke-virtual {v0}, Lcom/netease/mrzhna/UserDataParser;->hasTimestamp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1516
    invoke-virtual {v0}, Lcom/netease/mrzhna/UserDataParser;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    .line 1520
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file timestamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1523
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->removeDirectory(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method private static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1690
    array-length v0, p1

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1691
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private runGame()V
    .locals 3

    .line 1458
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    const-string v2, "patch_config.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v0}, Lcom/netease/mrzhna/Launcher;->preparePatch()V

    goto :goto_0

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v0}, Lcom/netease/mrzhna/Launcher;->startGame()V

    :goto_0
    return-void
.end method

.method private showGuideToSettingsDialog()V
    .locals 3

    .line 2548
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "obb_file_error_msg_2"

    .line 2549
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "neox_settings"

    .line 2550
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Launcher$23;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$23;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "exit"

    .line 2557
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Launcher$22;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$22;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2563
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2564
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2565
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPermissionDeniedDialog(Landroid/app/Activity;)V
    .locals 2

    .line 1590
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "neox_storage_permission_error_msg_2"

    .line 1591
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "neox_confirm"

    .line 1592
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/netease/mrzhna/Launcher$13;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Launcher$13;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "neox_exit"

    .line 1599
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/netease/mrzhna/Launcher$12;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Launcher$12;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 1605
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1606
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1607
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPopupX()V
    .locals 3

    .line 1776
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1778
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1780
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const-string v1, "[azx]"

    const-string v2, "LauncherOversea.showPopupX show <never ask again> dialog"

    .line 1783
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1785
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "neox_permission_confirm_content"

    .line 1786
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "neox_confirm"

    .line 1787
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Launcher$15;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$15;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "neox_cancel"

    .line 1792
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Launcher$14;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$14;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1797
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showRequestPermissionDialog(Landroid/app/Activity;)V
    .locals 3

    .line 1568
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "neox_storage_permission_error_msg_1"

    .line 1569
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "neox_confirm"

    .line 1570
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Launcher$11;

    invoke-direct {v2, p0, p1}, Lcom/netease/mrzhna/Launcher$11;-><init>(Lcom/netease/mrzhna/Launcher;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "neox_exit"

    .line 1578
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/netease/mrzhna/Launcher$10;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Launcher$10;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 1584
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1585
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1586
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private show_dialog(Ljava/lang/String;)V
    .locals 2

    .line 2370
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    new-instance v1, Lcom/netease/mrzhna/Launcher$20;

    invoke-direct {v1, p0, p1}, Lcom/netease/mrzhna/Launcher$20;-><init>(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mrzhna/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static toSettingPage(Landroid/app/Activity;)V
    .locals 4

    .line 1611
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 1612
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1613
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1614
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 1615
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1616
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private usePatchObbFile()Z
    .locals 3

    .line 2010
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "patch_obb_md5.txt"

    .line 2011
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 2013
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2014
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 2015
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 2020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usePatchObbFile Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEOX_G66_OBB"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method calcAssetToCopy(Ljava/lang/String;)J
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 767
    iget-object v0, v7, Lcom/netease/mrzhna/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    .line 774
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "filelist.txt"

    invoke-direct {v2, v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 775
    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 784
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    move-object v9, v0

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/netease/mrzhna/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 789
    iget-object v0, v7, Lcom/netease/mrzhna/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide/16 v12, 0x0

    move-wide v14, v12

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 791
    iget-object v0, v7, Lcom/netease/mrzhna/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 792
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 793
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 798
    :cond_2
    :try_start_1
    invoke-virtual {v10, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    .line 800
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 804
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide v1, v12

    :goto_2
    cmp-long v0, v1, v12

    if-eqz v0, :cond_4

    const-wide/16 v16, -0x1

    cmp-long v0, v1, v16

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-wide/from16 v16, v1

    goto :goto_5

    .line 812
    :cond_4
    :goto_4
    :try_start_2
    invoke-virtual {v10, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 813
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    .line 814
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 818
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide/from16 v16, v12

    .line 822
    :goto_5
    iget-object v0, v7, Lcom/netease/mrzhna/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    new-instance v6, Lcom/netease/mrzhna/Launcher$AssetInfo;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v5

    move-object v12, v5

    move-object v13, v6

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/netease/mrzhna/Launcher$AssetInfo;-><init>(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-long v14, v14, v16

    :cond_5
    const-wide/16 v12, 0x0

    goto :goto_1

    :cond_6
    return-wide v14
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    .line 2603
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 2605
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 2607
    invoke-static {p0, p1}, Lcom/netease/mrzhna/SupportHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2612
    :cond_1
    invoke-static {p0, p1}, Lcom/netease/mrzhna/SupportHelper;->permissionCheckerCheckSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPermission Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NeoXDevice"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0
.end method

.method determineStorage()Z
    .locals 13

    .line 832
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->initStorageStatus()V

    .line 836
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "filelist.txt"

    .line 837
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 838
    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_asset_filelist:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 842
    :catch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    :goto_0
    const-string v0, "neox_config"

    const/4 v1, 0x0

    .line 844
    invoke-virtual {p0, v0, v1}, Lcom/netease/mrzhna/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "NeoXRoot"

    const/4 v3, 0x0

    .line 845
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    const-wide/32 v4, 0x100000

    const/4 v6, 0x1

    if-nez v2, :cond_4

    .line 848
    invoke-virtual {p0, v3}, Lcom/netease/mrzhna/Launcher;->calcAssetToCopy(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/netease/mrzhna/Launcher;->m_size_to_copy:J

    .line 849
    iput-object v3, p0, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    .line 850
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v7, v0, v3

    .line 852
    iget-wide v8, p0, Lcom/netease/mrzhna/Launcher;->m_size_to_copy:J

    add-long/2addr v8, v4

    iget-wide v10, v7, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v12, v8, v10

    if-gez v12, :cond_0

    .line 854
    iput-object v7, p0, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 858
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    if-nez v0, :cond_2

    return v1

    .line 864
    :cond_2
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "neox_root"

    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    const-string v1, "/sdcard/"

    .line 865
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 867
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    .line 869
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    iget-object v1, v1, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_neox_root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "determineStorage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->removeOldApp()V

    return v6

    .line 878
    :cond_4
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->removeOldApp()V

    .line 879
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    const-string v3, "Storage"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    .line 880
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Launcher;->calcAssetToCopy(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/mrzhna/Launcher;->m_size_to_copy:J

    add-long/2addr v2, v4

    .line 881
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    iget-wide v4, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    return v1

    :cond_5
    return v6
.end method

.method expansionFilesDelivered()Z
    .locals 9

    const-string v0, "NEOX_G66_OBB"

    .line 2026
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->getObbFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2031
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "neox_config"

    .line 2033
    invoke-virtual {p0, v3, v2}, Lcom/netease/mrzhna/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "MD5CHECK"

    .line 2034
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2035
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->getApkVersion()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :cond_1
    const-string v6, "NEOX_G66_OBB expansionFilesDelivered"

    if-ne v3, v4, :cond_2

    .line 2042
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MD5CHECKFLAG "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iput v4, p0, Lcom/netease/mrzhna/Launcher;->m_md5check:I

    .line 2046
    :cond_2
    iget v3, p0, Lcom/netease/mrzhna/Launcher;->m_md5check:I

    if-ne v3, v4, :cond_3

    .line 2048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MD5CHECK PASS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/mrzhna/Launcher;->m_md5check:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    const-string v3, "NEED TO CHECK MD5"

    .line 2052
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    new-instance v3, Lcom/netease/mrzhna/Launcher$17;

    invoke-direct {v3, p0}, Lcom/netease/mrzhna/Launcher$17;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {p0, v3}, Lcom/netease/mrzhna/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2062
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v6, "obb_md5.txt"

    .line 2063
    invoke-virtual {v3, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 2065
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2066
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 2068
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "expansionFilesDelivered PACKAGE ERROR! obb_md5.txt ERROR0!!!"

    if-nez v6, :cond_4

    .line 2072
    :try_start_1
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2076
    :cond_4
    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 2078
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2080
    iput v4, p0, Lcom/netease/mrzhna/Launcher;->m_md5check:I

    const-string v1, "expansionFilesDelivered expansionFilesDelivered PASS!"

    .line 2081
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 2086
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    const-string v1, "expansionFilesDelivered PACKAGE ERROR! obb_md5.txt ERROR1!!!"

    .line 2093
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    iput v2, p0, Lcom/netease/mrzhna/Launcher;->m_md5check:I

    :cond_6
    return v2
.end method

.method expansionPatchObbFilesDelivered()Z
    .locals 8

    .line 2105
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->getPatchObbFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2110
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "neox_config"

    .line 2112
    invoke-virtual {p0, v2, v1}, Lcom/netease/mrzhna/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PATCH_OBB_MD5CHECK"

    .line 2113
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "NEOX_G66_OBB"

    if-ne v2, v3, :cond_1

    const-string v2, "PATCH_OBB_MD5CHECKFLAG 1"

    .line 2117
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iput v3, p0, Lcom/netease/mrzhna/Launcher;->m_patch_obb_md5check:I

    .line 2121
    :cond_1
    iget v2, p0, Lcom/netease/mrzhna/Launcher;->m_patch_obb_md5check:I

    if-ne v2, v3, :cond_2

    const-string v0, "PATCH_OBB_MD5CHECK PASS"

    .line 2123
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v2, "NEED TO CHECK PATCH OBB MD5"

    .line 2127
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    new-instance v2, Lcom/netease/mrzhna/Launcher$18;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$18;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {p0, v2}, Lcom/netease/mrzhna/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2137
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v5, "patch_obb_md5.txt"

    .line 2138
    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 2140
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2141
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 2143
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "PACKAGE ERROR! patch_obb_md5.txt ERROR0!!!"

    if-nez v5, :cond_3

    .line 2147
    :try_start_1
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2151
    :cond_3
    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 2153
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2155
    iput v3, p0, Lcom/netease/mrzhna/Launcher;->m_patch_obb_md5check:I

    const-string v0, "expansionPatchObbFilesDelivered PASS!"

    .line 2156
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2161
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    const-string v0, "PACKAGE ERROR! patch_obb_md5.txt ERROR1!!!"

    .line 2168
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    iput v1, p0, Lcom/netease/mrzhna/Launcher;->m_patch_obb_md5check:I

    :cond_5
    return v1
.end method

.method initStorageStatus()V
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 541
    :goto_0
    iget-object v3, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 543
    new-instance v4, Lcom/netease/mrzhna/Launcher$StorageStatus;

    invoke-direct {v4, v1, v1, v0}, Lcom/netease/mrzhna/Launcher$StorageStatus;-><init>(Lcom/netease/mrzhna/Launcher;Lcom/netease/mrzhna/Launcher;I)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "storage"

    .line 546
    invoke-virtual {v1, v0}, Lcom/netease/mrzhna/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const/4 v4, 0x1

    .line 551
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getVolumePaths"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getVolumeState"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const/4 v5, 0x0

    :catch_1
    const/4 v6, 0x0

    :goto_1
    const-string v7, "mounted"

    const-string v8, "m_storage_statuses[STORAGE_INTERNAL]: "

    const-string v9, "%d"

    const-string v10, " "

    const-string v11, "determineStorage"

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    :try_start_2
    new-array v14, v2, [Ljava/lang/Object;

    .line 561
    invoke-virtual {v5, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 562
    :goto_2
    array-length v15, v5

    if-ge v14, v15, :cond_4

    new-array v15, v4, [Ljava/lang/Object;

    .line 564
    aget-object v16, v5, v14

    aput-object v16, v15, v2

    invoke-virtual {v6, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 565
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 567
    aget-object v15, v5, v14

    invoke-static {v15}, Lcom/netease/mrzhna/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v12

    if-nez v14, :cond_1

    .line 570
    iget-object v15, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v15, v15, v2

    aget-object v3, v5, v14

    iput-object v3, v15, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 571
    iget-object v3, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v3, v3, v2

    iput-wide v12, v3, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v12, v12, v2

    iget-object v12, v12, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v13, v4, [Ljava/lang/Object;

    iget-object v15, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v15, v15, v2

    move-object/from16 v18, v5

    iget-wide v4, v15, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v13, v2

    invoke-static {v12, v9, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    move-object/from16 v18, v5

    .line 576
    iget-object v3, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-wide v2, v3, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    const-wide/16 v15, 0x0

    cmp-long v17, v2, v15

    if-nez v17, :cond_3

    .line 578
    iget-object v2, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v2, v2, v4

    aget-object v3, v18, v14

    iput-object v3, v2, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 579
    iget-object v2, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v2, v2, v4

    iput-wide v12, v2, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_storage_statuses[STORAGE_EXTERNAL]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/Object;

    iget-object v13, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v13, v13, v4

    move-object v4, v6

    iget-wide v5, v13, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v12, v6

    invoke-static {v3, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :cond_2
    move-object/from16 v18, v5

    :cond_3
    :goto_3
    move-object v4, v6

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object v6, v4

    move-object/from16 v5, v18

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    .line 596
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    .line 592
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v0

    .line 588
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 600
    :cond_4
    :goto_5
    iget-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-wide v2, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    const-wide/16 v12, 0x0

    cmp-long v0, v2, v12

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-wide v2, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v0, v2, v12

    if-nez v0, :cond_5

    .line 602
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 604
    iget-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 605
    iget-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v3, v0, v2

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v4, v4, v2

    iget-wide v6, v4, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v3, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    .line 609
    :goto_6
    iget-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v0, v0, v2

    iget-wide v3, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/netease/mrzhna/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/netease/mrzhna/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 613
    iget-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v0, v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/mrzhna/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v4, v4, v2

    iget-wide v4, v4, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v3, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_6
    iget-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/mrzhna/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 619
    iget-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v3, v0, v2

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_storage_statuses[STORAGE_DATA]: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/netease/mrzhna/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v2, v6, v2

    iget-wide v6, v2, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "neox_config"

    .line 622
    invoke-virtual {v1, v0, v5}, Lcom/netease/mrzhna/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "Storage"

    .line 623
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 624
    iget-object v2, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_7

    .line 626
    iget-object v2, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v0, v2, v0

    iput-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_7
    const/4 v0, 0x3

    if-ge v2, v0, :cond_9

    .line 632
    iget-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v0, v0, v2

    iget-wide v3, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_8

    .line 634
    iget-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_storage_statuses:[Lcom/netease/mrzhna/Launcher$StorageStatus;

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    return-void
.end method

.method launch()V
    .locals 7

    .line 895
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->determineStorage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 897
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 900
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 904
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be a directory!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeoXDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->finish()V

    return-void

    .line 911
    :cond_1
    new-instance v1, Lcom/netease/mrzhna/Launcher$2;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Launcher$2;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 919
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 921
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 927
    :cond_2
    :goto_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Documents/PlatformConfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 931
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    .line 935
    :cond_3
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "PlatformConfig.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 940
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_platform_config:Lcom/netease/mrzhna/PlatformConfigParser;

    invoke-virtual {v1, v0}, Lcom/netease/mrzhna/PlatformConfigParser;->parse(Ljava/io/InputStream;)V

    .line 943
    :cond_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 947
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 950
    :goto_3
    iget-wide v0, p0, Lcom/netease/mrzhna/Launcher;->m_size_to_copy:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_6

    .line 952
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 953
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 955
    new-instance v0, Lcom/netease/mrzhna/Launcher$CopyFile;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/Launcher$CopyFile;-><init>(Lcom/netease/mrzhna/Launcher;)V

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_copy_file:Lcom/netease/mrzhna/Launcher$CopyFile;

    .line 956
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_copy_file:Lcom/netease/mrzhna/Launcher$CopyFile;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 957
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 958
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 960
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 962
    :cond_5
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_timer:Ljava/util/Timer;

    .line 963
    new-instance v2, Lcom/netease/mrzhna/Launcher$3;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$3;-><init>(Lcom/netease/mrzhna/Launcher;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x3c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_5

    .line 975
    :cond_6
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    new-instance v1, Lcom/netease/mrzhna/Launcher$4;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Launcher$4;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/netease/mrzhna/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 987
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "neox_launcher_asset_size_to_copy"

    invoke-direct {p0, v2}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/mrzhna/Launcher;->m_size_to_copy:J

    .line 989
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    if-nez v2, :cond_8

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "neox_launcher_no_enough_space"

    invoke-direct {p0, v2}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 997
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    iget-wide v0, v0, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    .line 999
    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    :goto_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ic_launcher"

    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "neox_cancel"

    .line 1003
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Launcher$5;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$5;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1012
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_5
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-string p2, "[azx]"

    const-string v0, "LauncherOversea.onActivityResult"

    .line 1811
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-lt v0, v3, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    aput-object v3, v0, v2

    const/4 v3, 0x1

    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    aput-object v4, v0, v3

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    aput-object v3, v0, v1

    .line 1815
    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->mPermissions:[Ljava/lang/String;

    .line 1817
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    iget-object v3, p0, Lcom/netease/mrzhna/Launcher;->mPermissions:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/netease/mrzhna/Launcher;->getUngrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x1e240

    const-string v4, "__exit_or_setting"

    if-ne p1, v3, :cond_3

    .line 1819
    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onActivityResult  isExit: TRUE"

    .line 1821
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->finishSelf()V

    goto :goto_0

    .line 1824
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult  ungranted num:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    array-length p1, v0

    if-nez p1, :cond_2

    .line 1826
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {p1}, Lcom/netease/mrzhna/Launcher;->tryOnLaunch()V

    goto :goto_0

    .line 1828
    :cond_2
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    const p2, 0xff01

    invoke-static {p1, v0, p2}, Lcom/netease/mrzhna/Launcher;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const v3, 0x1e241    # 1.73E-40f

    if-ne p1, v3, :cond_5

    const-string p1, "onActivityResult  PERMISSION_NOTIFICATION"

    .line 1832
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "__p_i_l_file_"

    .line 1837
    invoke-virtual {p0, p1, v2}, Lcom/netease/mrzhna/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1838
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "__p_i_l_key_"

    .line 1839
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1840
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1841
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->showPopupX()V

    goto :goto_0

    .line 1844
    :cond_4
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    const p2, 0xff02

    invoke-static {p1, v0, p2}, Lcom/netease/mrzhna/Launcher;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 238
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->finish()V

    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "__exit_game_app"

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "[azx]"

    const-string v0, "LauncherOversea.onCreate exit the game when EXIT_GAME is set to TRUE"

    .line 248
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->finish()V

    return-void

    :cond_1
    const-string v0, "__skip_permission_notification"

    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mrzhna/Launcher;->mSkipNotification:Z

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LauncherOversea.onCreate FOLLOW"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/netease/mrzhna/Launcher;->mSkipNotification:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "azx"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_package_name:Ljava/lang/String;

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_package_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p0, Lcom/netease/mrzhna/Launcher;->m_version_code:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 264
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/Android/obb/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_ObbFilePath:Ljava/lang/String;

    .line 265
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    iget v3, p0, Lcom/netease/mrzhna/Launcher;->m_version_code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/netease/mrzhna/Launcher;->m_package_name:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "main.%d.%s.obb"

    invoke-static {p1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_ObbFileName:Ljava/lang/String;

    .line 268
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    .line 269
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 270
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 271
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 272
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 273
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 274
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "neox_launcher_copy_data"

    invoke-direct {p0, v2}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 275
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "ic_launcher"

    invoke-direct {p0, v2}, Lcom/netease/mrzhna/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 276
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 277
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v2, 0x20080

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 279
    invoke-static {}, Lcom/netease/mrzhna/Launcher;->getCoreNumber()I

    move-result p1

    .line 281
    new-instance v2, Lcom/netease/mrzhna/PlatformConfigParser;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/PlatformConfigParser;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_platform_config:Lcom/netease/mrzhna/PlatformConfigParser;

    .line 282
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "SDK_INT"

    invoke-virtual {v2, v4, v3}, Lcom/netease/mrzhna/PlatformConfigParser;->addVariable(Ljava/lang/String;I)V

    .line 284
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_platform_config:Lcom/netease/mrzhna/PlatformConfigParser;

    const-string v3, "CORE_NUM"

    invoke-virtual {v2, v3, p1}, Lcom/netease/mrzhna/PlatformConfigParser;->addVariable(Ljava/lang/String;I)V

    .line 285
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_platform_config:Lcom/netease/mrzhna/PlatformConfigParser;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MODEL"

    invoke-virtual {v2, v4, v3}, Lcom/netease/mrzhna/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_platform_config:Lcom/netease/mrzhna/PlatformConfigParser;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "MANUFACTURER"

    invoke-virtual {v2, v4, v3}, Lcom/netease/mrzhna/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_platform_config:Lcom/netease/mrzhna/PlatformConfigParser;

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v4, "HARDWARE"

    invoke-virtual {v2, v4, v3}, Lcom/netease/mrzhna/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK_INT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NeoX"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RELEASE is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CORE_NUM is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODEL is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MANUFACTURER is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HARDWARE is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iput-boolean v1, p0, Lcom/netease/mrzhna/Launcher;->m_is_gl_loaded:Z

    .line 296
    new-instance p1, Landroid/opengl/GLSurfaceView;

    invoke-direct {p1, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    .line 297
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt p1, v1, :cond_3

    .line 299
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_2

    .line 301
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v1, 0xf06

    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 305
    :cond_2
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v1, 0x505

    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    .line 308
    :cond_3
    :goto_1
    iput-object p0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    .line 309
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 310
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    new-instance v0, Lcom/netease/mrzhna/Launcher$1;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/Launcher$1;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 528
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Launcher;->setContentView(Landroid/view/View;)V

    .line 531
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public onLoseOBB()V
    .locals 4

    const-string v0, "NEOX_G66_OBB"

    const-string v1, "lost obb file"

    .line 2249
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x7d0

    .line 2251
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2253
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2255
    :goto_0
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/netease/mrzhna/Launcher$19;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Launcher$19;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3e8

    .line 2262
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2264
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2266
    :goto_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 2267
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2268
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2269
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2270
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2271
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 2272
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "app_name"

    invoke-direct {p0, v2}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 2273
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "neox_launcher_downloading"

    invoke-direct {p0, v3}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2274
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "ic_launcher"

    invoke-direct {p0, v2}, Lcom/netease/mrzhna/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 2275
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 2276
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x20080

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2277
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2278
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_fetch_obb_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2279
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->downloadObbFile()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 11

    const-string v0, "[azx]"

    const-string v1, "LauncherOversea.onRequestPermissionsResult"

    .line 1697
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1700
    :goto_0
    array-length v6, p2

    if-ge v4, v6, :cond_2

    if-eqz v5, :cond_0

    .line 1701
    aget v5, p3, v4

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1707
    :cond_2
    :goto_2
    invoke-direct {p0, p0, p2}, Lcom/netease/mrzhna/Launcher;->existAnyNeverAskAgainPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    const-string v4, "__p_i_l_file_"

    .line 1709
    invoke-virtual {p0, v4, v3}, Lcom/netease/mrzhna/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "__p_i_l_key_"

    .line 1710
    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1711
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PERMISSION_INTERNAL_LOG_KEY cnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_3

    const-string v2, "LauncherOversea.onRequestPermissionsResult: all the requested rights are granted!"

    .line 1714
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v2}, Lcom/netease/mrzhna/Launcher;->tryOnLaunch()V

    goto/16 :goto_6

    .line 1717
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x21

    const/4 v9, 0x2

    if-lt v5, v8, :cond_4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "android.permission.READ_MEDIA_AUDIO"

    aput-object v8, v5, v3

    const-string v8, "android.permission.READ_MEDIA_IMAGES"

    aput-object v8, v5, v2

    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    aput-object v2, v5, v9

    .line 1721
    iput-object v5, p0, Lcom/netease/mrzhna/Launcher;->mPermissions:[Ljava/lang/String;

    .line 1723
    :cond_4
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    iget-object v5, p0, Lcom/netease/mrzhna/Launcher;->mPermissions:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/netease/mrzhna/Launcher;->getUngrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-ne v7, v9, :cond_5

    .line 1724
    invoke-direct {p0, p0, v2}, Lcom/netease/mrzhna/Launcher;->existAnyNeverAskAgainPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1726
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->showPopupX()V

    goto :goto_4

    :cond_5
    const v5, 0xff01

    const v8, 0x1e241    # 1.73E-40f

    const-string v10, "__first_time_request_permission"

    if-ne p1, v5, :cond_8

    if-nez v7, :cond_6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    const-string v5, "LauncherOversea.onRequestPermissionsResult FIRST_CHECK_REQUEST_CODE"

    .line 1731
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-direct {p0, p0, v2}, Lcom/netease/mrzhna/Launcher;->existAnyNeverAskAgainPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1737
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->showPopupX()V

    goto :goto_3

    .line 1740
    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/netease/mrzhna/PermissionNotification;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1741
    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1742
    invoke-virtual {p0, v2, v8}, Lcom/netease/mrzhna/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    :cond_8
    const v5, 0xff02

    if-ne p1, v5, :cond_a

    const-string v5, "LauncherOversea.onRequestPermissionsResult SECOND_CHECK_REQUEST_CODE"

    .line 1745
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    invoke-direct {p0, p0, v2}, Lcom/netease/mrzhna/Launcher;->existAnyNeverAskAgainPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1749
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->showPopupX()V

    :goto_3
    const/4 v3, 0x2

    goto :goto_5

    .line 1755
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/netease/mrzhna/PermissionNotification;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1756
    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1757
    invoke-virtual {p0, v2, v8}, Lcom/netease/mrzhna/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    :cond_a
    :goto_4
    move v3, v7

    .line 1761
    :goto_5
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1762
    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1763
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1766
    :goto_6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1768
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 1877
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "__p_i_l_file_"

    const/4 v1, 0x0

    .line 1880
    invoke-virtual {p0, v0, v1}, Lcom/netease/mrzhna/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "__p_i_l_key_"

    .line 1881
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LauncherOversea.onResume  mInternalState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/mrzhna/Launcher;->mInternalState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cnt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[azx]"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-void

    .line 1893
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    const/4 v5, 0x1

    if-lt v0, v4, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "android.permission.READ_MEDIA_AUDIO"

    aput-object v4, v0, v1

    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    aput-object v4, v0, v5

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    aput-object v4, v0, v2

    .line 1896
    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->mPermissions:[Ljava/lang/String;

    .line 1898
    :cond_1
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->mPermissions:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netease/mrzhna/Launcher;->getUngrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1899
    array-length v0, v0

    if-nez v0, :cond_2

    const-string v0, "LauncherOversea.onResume  all permissions are granted"

    .line 1900
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    iget-boolean v0, v0, Lcom/netease/mrzhna/Launcher;->m_is_gl_loaded:Z

    if-eqz v0, :cond_3

    const-string v0, "NEOX_G66_OBB"

    const-string v1, "launch in onResume"

    .line 1902
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v0}, Lcom/netease/mrzhna/Launcher;->tryOnLaunch()V

    goto :goto_0

    .line 1905
    :cond_2
    iget v0, p0, Lcom/netease/mrzhna/Launcher;->mInternalState:I

    if-ne v0, v5, :cond_3

    const-string v0, "LauncherOversea.onResume  activity terminated itself"

    .line 1906
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->finishSelf()V

    .line 1908
    iput v1, p0, Lcom/netease/mrzhna/Launcher;->mInternalState:I

    :cond_3
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 747
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 750
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_1

    .line 752
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 754
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 758
    :cond_0
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v0, 0x505

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method patching()V
    .locals 8

    .line 1309
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1310
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v1, "neox_launcher_updating"

    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1311
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetTotalSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1312
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1313
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v1, "%2d/%2dKB"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1315
    new-instance v0, Lcom/netease/mrzhna/Launcher$PatchFile;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/Launcher$PatchFile;-><init>(Lcom/netease/mrzhna/Launcher;)V

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_file:Lcom/netease/mrzhna/Launcher$PatchFile;

    .line 1316
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_patch_file:Lcom/netease/mrzhna/Launcher$PatchFile;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1317
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1319
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_timer:Ljava/util/Timer;

    .line 1320
    new-instance v3, Lcom/netease/mrzhna/Launcher$9;

    invoke-direct {v3, p0}, Lcom/netease/mrzhna/Launcher$9;-><init>(Lcom/netease/mrzhna/Launcher;)V

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method preparePatch()V
    .locals 3

    .line 1184
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1191
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->savePreference()V

    .line 1196
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 1197
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1198
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1199
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1200
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1201
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "ic_launcher"

    invoke-direct {p0, v2}, Lcom/netease/mrzhna/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1202
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1203
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x20080

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1204
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "neox_launcher_check_update"

    invoke-direct {p0, v2}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1205
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1206
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1207
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "fmodex"

    .line 1220
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "fmodevent"

    .line 1221
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "client"

    .line 1223
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1225
    new-instance v0, Lcom/netease/mrzhna/Launcher$6;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/Launcher$6;-><init>(Lcom/netease/mrzhna/Launcher;)V

    const/4 v1, 0x0

    .line 1267
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method savePreference()V
    .locals 8

    const-string v0, "neox_config"

    const/4 v1, 0x0

    .line 643
    invoke-virtual {p0, v0, v1}, Lcom/netease/mrzhna/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 644
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 645
    iget-object v3, p0, Lcom/netease/mrzhna/Launcher;->m_current_storage:Lcom/netease/mrzhna/Launcher$StorageStatus;

    iget v3, v3, Lcom/netease/mrzhna/Launcher$StorageStatus;->Type:I

    const-string v4, "Storage"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mrzhna/Launcher;->m_neox_root:Ljava/lang/String;

    const-string v4, "NeoXRoot"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 648
    iget v3, p0, Lcom/netease/mrzhna/Launcher;->m_md5check:I

    const-string v4, "MD5CHECK"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save in preference m_md5check value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/mrzhna/Launcher;->m_md5check:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NEOX_G66_OBB"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget v3, p0, Lcom/netease/mrzhna/Launcher;->m_patch_obb_md5check:I

    const-string v5, "PATCH_OBB_MD5CHECK"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save in preference m_patch_obb_md5check value is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/netease/mrzhna/Launcher;->m_patch_obb_md5check:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DEVICE_RELEASE"

    const-string v4, ""

    .line 656
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current            device_release_version_value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NeoX"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save in preference device_release_version_value is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 662
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 667
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    .line 671
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 673
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 674
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "need_remove_shader_cache"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 676
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_platform_config:Lcom/netease/mrzhna/PlatformConfigParser;

    invoke-virtual {v0}, Lcom/netease/mrzhna/PlatformConfigParser;->getOptions()Ljava/util/HashMap;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 679
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    goto :goto_1

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_platform_config:Lcom/netease/mrzhna/PlatformConfigParser;

    invoke-virtual {v0}, Lcom/netease/mrzhna/PlatformConfigParser;->getStringVariables()Ljava/util/HashMap;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 685
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    goto :goto_2

    .line 694
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method startGame()V
    .locals 4

    const-string v0, "startGame"

    .line 699
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 701
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 705
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 707
    :cond_1
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->savePreference()V

    .line 708
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    const-class v3, Lcom/netease/mrzhna/Client;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10010000

    .line 709
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 712
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "startGame!!!"

    .line 713
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    const-string v3, "startGame!!! pullupIntent is not null"

    .line 715
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "startGame!!! pullupUri is not null"

    .line 718
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v3, "startGame!!! error!"

    .line 723
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 727
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v0, v1}, Lcom/netease/mrzhna/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 728
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->finish()V

    const/4 v0, 0x0

    .line 729
    invoke-virtual {p0, v0, v0}, Lcom/netease/mrzhna/Launcher;->overridePendingTransition(II)V

    return-void
.end method

.method startPatch()V
    .locals 3

    .line 1274
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher;->getNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1276
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetTotalSize()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1280
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "neox_launcher_warn"

    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "neox_launcher_not_wifi"

    .line 1281
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "ic_launcher"

    invoke-direct {p0, v2}, Lcom/netease/mrzhna/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "neox_launcher_continue"

    .line 1282
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Launcher$7;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$7;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "neox_launcher_stop"

    .line 1292
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Launcher$8;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$8;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1302
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 1277
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_launcher:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v0}, Lcom/netease/mrzhna/Launcher;->patching()V

    :goto_1
    return-void
.end method

.method tryOnLaunch()V
    .locals 2

    .line 2193
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2194
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method updateCopiedSize(J)V
    .locals 2

    const-wide/16 v0, 0x64

    mul-long p1, p1, v0

    .line 740
    iget-wide v0, p0, Lcom/netease/mrzhna/Launcher;->m_size_to_copy:J

    div-long/2addr p1, v0

    long-to-int p2, p1

    .line 741
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method updateCopyingFile(Ljava/lang/String;)V
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "neox_launcher_copying"

    invoke-direct {p0, v0}, Lcom/netease/mrzhna/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 735
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
