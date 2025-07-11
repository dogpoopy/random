.class public Lcom/netease/mrzhna/Client;
.super Lcom/netease/neox/NeoXClient;
.source "Client.java"

# interfaces
.implements Lcom/netease/mrzhna/IScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mrzhna/Client$installApkErrorCode;
    }
.end annotation


# static fields
.field public static final COMMON_CALLBACK_PHAROS_POLICY:I = 0x2

.field public static final COMMON_CALLBACK_PHAROS_QOS:I = 0x3

.field public static final COMMON_CALLBACK_PHAROS_RESULT:I = 0x1

.field public static final COMMON_CALLBACK_PHAROS_SERVER:I = 0x4

.field public static final COMMON_CALLBACK_SCREENSHOT:I = 0x5

.field static final MBB_ABORT:I = 0x5

.field static final MBB_CANCEL:I = 0x1

.field static final MBB_IGNORE:I = 0x6

.field static final MBB_NO:I = 0x3

.field static final MBB_OK:I = 0x0

.field static final MBB_RETRY:I = 0x4

.field static final MBB_YES:I = 0x2

.field static final MBT_ABORTRETRYIGNORE:I = 0x2

.field static final MBT_OK:I = 0x0

.field static final MBT_OKCANCEL:I = 0x1

.field static final MBT_RETRYCANCEL:I = 0x5

.field static final MBT_YESNO:I = 0x4

.field static final MBT_YESNOCANCEL:I = 0x3

.field private static m_cancel_all_time:J


# instance fields
.field public final EXT_FUNC_TYPE_NEW_INTENT:I

.field public final EXT_FUNC_TYPE_PHAROS:I

.field public final EXT_FUNC_TYPE_SCREENSHOT_OBSERVER:I

.field public m_activity_paused:Z

.field public m_activity_stopped:Z

.field private m_audiovolume_observer:Lcom/netease/mrzhna/AudioVolumeContentObserver;

.field private m_ccmini:Lcom/netease/mrzhna/CCMini;

.field private m_channel:Lcom/netease/mrzhna/Channel;

.field private m_clipboard:Landroid/content/ClipboardManager;

.field private m_current_network_type:I

.field private m_dump_appkey:Ljava/lang/String;

.field private m_dump_basicinfo:Ljava/lang/String;

.field private m_dump_game:Ljava/lang/String;

.field private m_dump_game_version:Ljava/lang/String;

.field private m_dump_userdesc:Ljava/lang/String;

.field private m_fmod_audio_device:Lorg/fmod/FMODAudioDevice;

.field private m_folding_mode_observer:Lcom/netease/mrzhna/FoldingModeContentObserver;

.field private m_iaware_gamesdk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

.field m_image_picker:Lcom/netease/mrzhna/ImagePicker;

.field private m_input_view:Lcom/netease/mrzhna/InputView;

.field m_is_push_manager_init:Z

.field private m_is_vkb_shown:Z

.field private m_keymousemode_receiver:Lcom/netease/mrzhna/KeyMouseModeReceiver;

.field private m_movie_view:Lcom/netease/mrzhna/MovieView;

.field private m_neox_config:Landroid/content/SharedPreferences;

.field private m_neox_notif:Landroid/content/SharedPreferences;

.field private m_neox_root:Ljava/lang/String;

.field m_profile_have_runnable:Z

.field m_profile_info_timerHandler:Landroid/os/Handler;

.field m_profile_info_timerRunnable:Ljava/lang/Runnable;

.field private m_ringermode_receiver:Lcom/netease/mrzhna/RingerModeReceiver;

.field private m_root_view_height:I

.field private m_root_view_width:I

.field private m_screenshot_observer:Lcom/netease/mrzhna/ScreenShotObserver;

.field private m_udid:Ljava/lang/String;

.field private m_view:Lcom/netease/neox/NeoXView;

.field private m_web_view:Lcom/netease/mrzhna/NeoXWebView;

.field private m_webview_helper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

.field neoxLocationMgr:Lcom/netease/mrzhna/NeoXLocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 206
    invoke-direct {p0}, Lcom/netease/neox/NeoXClient;-><init>()V

    const/4 v0, 0x1

    .line 223
    iput v0, p0, Lcom/netease/mrzhna/Client;->EXT_FUNC_TYPE_PHAROS:I

    const/4 v0, 0x2

    .line 224
    iput v0, p0, Lcom/netease/mrzhna/Client;->EXT_FUNC_TYPE_SCREENSHOT_OBSERVER:I

    const/4 v0, 0x3

    .line 225
    iput v0, p0, Lcom/netease/mrzhna/Client;->EXT_FUNC_TYPE_NEW_INTENT:I

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_udid:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_view:Lcom/netease/neox/NeoXView;

    .line 231
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_neox_root:Ljava/lang/String;

    const/4 v1, 0x0

    .line 238
    iput v1, p0, Lcom/netease/mrzhna/Client;->m_root_view_height:I

    .line 239
    iput v1, p0, Lcom/netease/mrzhna/Client;->m_root_view_width:I

    .line 244
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_keymousemode_receiver:Lcom/netease/mrzhna/KeyMouseModeReceiver;

    .line 246
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_ringermode_receiver:Lcom/netease/mrzhna/RingerModeReceiver;

    .line 247
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_audiovolume_observer:Lcom/netease/mrzhna/AudioVolumeContentObserver;

    .line 248
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_folding_mode_observer:Lcom/netease/mrzhna/FoldingModeContentObserver;

    .line 250
    iput-boolean v1, p0, Lcom/netease/mrzhna/Client;->m_is_vkb_shown:Z

    .line 252
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    .line 254
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_webview_helper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    .line 256
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    .line 257
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    .line 258
    iput-boolean v1, p0, Lcom/netease/mrzhna/Client;->m_profile_have_runnable:Z

    .line 260
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->neoxLocationMgr:Lcom/netease/mrzhna/NeoXLocationManager;

    .line 262
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_web_view:Lcom/netease/mrzhna/NeoXWebView;

    .line 264
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_screenshot_observer:Lcom/netease/mrzhna/ScreenShotObserver;

    const-string v2, "g66na"

    .line 270
    iput-object v2, p0, Lcom/netease/mrzhna/Client;->m_dump_game:Ljava/lang/String;

    const-string v2, "d592a2ff6d3598c638d2a712ea46d382"

    .line 271
    iput-object v2, p0, Lcom/netease/mrzhna/Client;->m_dump_appkey:Ljava/lang/String;

    const-string v2, "unknown"

    .line 272
    iput-object v2, p0, Lcom/netease/mrzhna/Client;->m_dump_game_version:Ljava/lang/String;

    .line 273
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_dump_basicinfo:Ljava/lang/String;

    .line 274
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_dump_userdesc:Ljava/lang/String;

    .line 276
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_movie_view:Lcom/netease/mrzhna/MovieView;

    .line 278
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_clipboard:Landroid/content/ClipboardManager;

    .line 285
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_iaware_gamesdk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

    .line 289
    iput-boolean v1, p0, Lcom/netease/mrzhna/Client;->m_activity_paused:Z

    .line 290
    iput-boolean v1, p0, Lcom/netease/mrzhna/Client;->m_activity_stopped:Z

    .line 334
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_fmod_audio_device:Lorg/fmod/FMODAudioDevice;

    .line 1447
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_image_picker:Lcom/netease/mrzhna/ImagePicker;

    .line 1474
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    .line 1483
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_ccmini:Lcom/netease/mrzhna/CCMini;

    .line 2079
    iput-boolean v1, p0, Lcom/netease/mrzhna/Client;->m_is_push_manager_init:Z

    return-void
.end method

.method private StoreImageThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    .locals 7

    .line 3524
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3526
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p5, v0

    .line 3527
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p6, v0

    .line 3529
    invoke-virtual {v5, p5, p6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3532
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 3533
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    .line 3531
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 3536
    new-instance p5, Landroid/content/ContentValues;

    const/4 p6, 0x4

    invoke-direct {p5, p6}, Landroid/content/ContentValues;-><init>(I)V

    .line 3537
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string p7, "kind"

    invoke-virtual {p5, p7, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    long-to-int p4, p3

    .line 3538
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "image_id"

    invoke-virtual {p5, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3539
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "height"

    invoke-virtual {p5, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3540
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "width"

    invoke-virtual {p5, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3542
    sget-object p3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p3, p5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    const/4 p4, 0x0

    .line 3545
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    .line 3547
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p5, 0x64

    invoke-virtual {p2, p3, p5, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3548
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    return-object p4
.end method

.method private StoreVideoThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    long-to-int p4, p3

    .line 3482
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "%d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "StoreVideoThumbnail"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 3486
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p5, p3

    .line 3487
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p6, p3

    .line 3489
    invoke-virtual {v6, p5, p6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3492
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 3493
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    .line 3491
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 3496
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 3497
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p6, "kind"

    invoke-virtual {p3, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3498
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "video_id"

    invoke-virtual {p3, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3499
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "height"

    invoke-virtual {p3, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3500
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "width"

    invoke-virtual {p3, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3502
    sget-object p4, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    const/4 p4, 0x0

    .line 3505
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    .line 3507
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p5, 0x64

    invoke-virtual {p2, p3, p5, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3508
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    const-string p1, "IOException"

    .line 3516
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4

    :catch_1
    const-string p1, "FileNotFoundException!"

    .line 3512
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4
.end method

.method private _installApk(Ljava/lang/String;)Lcom/netease/mrzhna/Client$installApkErrorCode;
    .locals 5

    const-string v0, "InstallPackage"

    const-string v1, "Start install"

    .line 3823
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 3825
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3834
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/mrzhna/Client;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Documents/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3835
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3837
    sget-object p1, Lcom/netease/mrzhna/Client$installApkErrorCode;->fileNotFound:Lcom/netease/mrzhna/Client$installApkErrorCode;

    return-object p1

    .line 3840
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const-string v4, "application/vnd.android.package-archive"

    if-lt p1, v3, :cond_1

    .line 3841
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3842
    invoke-static {p0, p1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 3843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apkUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 3844
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3845
    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p1, "Version not larger than N"

    .line 3847
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "start activity"

    .line 3851
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    invoke-virtual {p0, v1}, Lcom/netease/mrzhna/Client;->startActivity(Landroid/content/Intent;)V

    .line 3853
    sget-object p1, Lcom/netease/mrzhna/Client$installApkErrorCode;->noError:Lcom/netease/mrzhna/Client$installApkErrorCode;

    return-object p1
.end method

.method static synthetic access$000(Lcom/netease/mrzhna/Client;)Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/netease/mrzhna/Client;->m_neox_root:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/mrzhna/Client;)I
    .locals 0

    .line 206
    iget p0, p0, Lcom/netease/mrzhna/Client;->m_root_view_width:I

    return p0
.end method

.method static synthetic access$102(Lcom/netease/mrzhna/Client;I)I
    .locals 0

    .line 206
    iput p1, p0, Lcom/netease/mrzhna/Client;->m_root_view_width:I

    return p1
.end method

.method static synthetic access$200(Lcom/netease/mrzhna/Client;)I
    .locals 0

    .line 206
    iget p0, p0, Lcom/netease/mrzhna/Client;->m_root_view_height:I

    return p0
.end method

.method static synthetic access$202(Lcom/netease/mrzhna/Client;I)I
    .locals 0

    .line 206
    iput p1, p0, Lcom/netease/mrzhna/Client;->m_root_view_height:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/mrzhna/Client;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lcom/netease/mrzhna/Client;->m_is_vkb_shown:Z

    return p0
.end method

.method static synthetic access$302(Lcom/netease/mrzhna/Client;Z)Z
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/netease/mrzhna/Client;->m_is_vkb_shown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netease/mrzhna/Client;)Lcom/netease/mrzhna/InputView;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/mrzhna/Client;)Lcom/netease/neox/NeoXView;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/netease/mrzhna/Client;->m_view:Lcom/netease/neox/NeoXView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/mrzhna/Client;)I
    .locals 0

    .line 206
    iget p0, p0, Lcom/netease/mrzhna/Client;->m_current_network_type:I

    return p0
.end method

.method static synthetic access$602(Lcom/netease/mrzhna/Client;I)I
    .locals 0

    .line 206
    iput p1, p0, Lcom/netease/mrzhna/Client;->m_current_network_type:I

    return p1
.end method

.method static synthetic access$700(Lcom/netease/mrzhna/Client;)Lcom/netease/mrzhna/NeoXWebView;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/netease/mrzhna/Client;->m_web_view:Lcom/netease/mrzhna/NeoXWebView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/netease/mrzhna/Client;Lcom/netease/mrzhna/NeoXWebView;)Lcom/netease/mrzhna/NeoXWebView;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_web_view:Lcom/netease/mrzhna/NeoXWebView;

    return-object p1
.end method

.method private calcNetmaskByPrefixLength(S)Ljava/lang/String;
    .locals 5

    if-ltz p1, :cond_3

    const/16 v0, 0x20

    if-le p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    sub-int/2addr v0, p1

    shl-int p1, v1, v0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    mul-int/lit8 v4, v3, 0x8

    rsub-int/lit8 v4, v4, 0x18

    shr-int v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 1349
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1353
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    :goto_2
    const-string p1, "255.255.255.255"

    return-object p1
.end method

.method private createBackgroundProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 3746
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    const-string v1, "key_progress_title"

    .line 3747
    invoke-virtual {v0, v1, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    const-string p1, "key_progress_desc"

    .line 3748
    invoke-virtual {v0, p1, p2}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    const-string p1, "key_progress"

    .line 3749
    invoke-virtual {v0, p1, p3}, Landroidx/work/Data$Builder;->putInt(Ljava/lang/String;I)Landroidx/work/Data$Builder;

    .line 3750
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    const-string p2, "key_game_pid"

    invoke-virtual {v0, p2, p1}, Landroidx/work/Data$Builder;->putInt(Ljava/lang/String;I)Landroidx/work/Data$Builder;

    .line 3752
    new-instance p1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class p2, Lcom/netease/mrzhna/BackgroundProgressWorker;

    invoke-direct {p1, p2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    const-string p2, "netease_g66_background"

    .line 3753
    invoke-virtual {p1, p2}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 3754
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 3755
    invoke-virtual {p1}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 3756
    iget-object p3, p0, Lcom/netease/mrzhna/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {p3}, Lcom/netease/neox/NeoXView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p3

    sget-object v0, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {p3, p2, v0, p1}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public static getCancelAllTime()J
    .locals 2

    .line 2191
    sget-wide v0, Lcom/netease/mrzhna/Client;->m_cancel_all_time:J

    return-wide v0
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 3

    .line 344
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 3

    .line 338
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3465
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".mp4"

    .line 3466
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "video/mp4"

    if-nez v0, :cond_4

    const-string v0, ".mpeg4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ".3gp"

    .line 3468
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "video/3gp"

    return-object p1

    :cond_1
    const-string v0, ".flv"

    .line 3470
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "video/x-flv"

    return-object p1

    :cond_2
    const-string v0, ".avi"

    .line 3472
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "video/x-msvideo"

    return-object p1

    :cond_3
    const-string v0, ".wmv"

    .line 3474
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "video/x-ms-wmv"

    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method private isImage(Ljava/lang/String;)Z
    .locals 5

    .line 3458
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    .line 3459
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object v0, v4, v3

    const/4 p1, 0x2

    .line 3460
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, p1

    const-string p1, "path: %s, lowerPath: %s, ret: %b"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "isImage"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 2763
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    const/4 v2, 0x0

    .line 2766
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2767
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    .line 2768
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    if-lez p1, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_1

    .line 2773
    aget-byte v6, v0, v5

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2777
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2784
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2788
    :catch_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_1
    nop

    goto :goto_3

    :catch_2
    nop

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v2, :cond_2

    .line 2784
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2788
    :catch_3
    :cond_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2789
    throw p1

    :catch_4
    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_4

    goto :goto_5

    :catch_5
    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_4

    .line 2784
    :cond_3
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 2788
    :catch_6
    :cond_4
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v2
.end method

.method private registerReceiverForApi33AndAbove(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 0

    .line 423
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/mrzhna/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    const-string v1, ".png"

    .line 3166
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3167
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_2
    const-string v1, ".jpg"

    .line 3168
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3169
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_3
    const-string v1, ".webp"

    .line 3170
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3171
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 3176
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3181
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x64

    .line 3189
    invoke-virtual {p1, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    .line 3194
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 3196
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p1

    .line 3183
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return v0
.end method

.method private setDisplayCutoutModeShortEdges()V
    .locals 6

    const-string v0, "finish setDisplayCutoutModeShortEdges"

    const-string v1, "NeoX"

    const-string v2, "setDisplayCutoutModeShortEdges"

    .line 747
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 748
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Build.VERSION.SDK_INT"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 752
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "layoutInDisplayCutoutMode"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 753
    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 754
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 756
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "setDisplayCutoutModeShortEdges failed"

    .line 757
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    throw v2
.end method

.method private setNavigationBarVisibility()V
    .locals 2

    .line 735
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1606

    goto :goto_0

    :cond_0
    const/16 v0, 0x606

    .line 739
    :goto_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public EnableProfile(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 2416
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/netease/mrzhna/Client;->m_profile_have_runnable:Z

    if-eqz v0, :cond_1

    .line 2418
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 2419
    iput-boolean p1, p0, Lcom/netease/mrzhna/Client;->m_profile_have_runnable:Z

    goto :goto_0

    .line 2423
    :cond_0
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/netease/mrzhna/Client;->m_profile_have_runnable:Z

    if-nez v0, :cond_1

    .line 2425
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 2426
    iput-boolean p1, p0, Lcom/netease/mrzhna/Client;->m_profile_have_runnable:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public MarkTrepnProfilerState(ILjava/lang/String;)V
    .locals 2

    .line 2433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.quicinc.Trepn.UpdateAppState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.quicinc.Trepn.UpdateAppState.Value"

    .line 2434
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.quicinc.Trepn.UpdateAppState.Value.Desc"

    .line 2435
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2436
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public NeedRemoveShaderCache()Z
    .locals 3

    .line 1084
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v1, "need_remove_shader_cache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method androidCheckSelfPermission(Ljava/lang/String;)I
    .locals 0

    .line 1573
    invoke-static {p0, p1}, Lcom/netease/mrzhna/SupportHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method androidRequestPermission(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1583
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "androidRequestPermission permission:%s, requestCode:%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "NeoX"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v1

    .line 1584
    invoke-static {p0, v0, p2}, Lcom/netease/mrzhna/SupportHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method androidShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 0

    .line 1577
    invoke-static {p0, p1}, Lcom/netease/mrzhna/SupportHelper;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method androidToSettingPage()V
    .locals 4

    const-string v0, "NeoX"

    const-string v1, "androidToSettingPage"

    .line 1588
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 1590
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1591
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1592
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 1593
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1594
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method cancelAllNotifications()V
    .locals 7

    const-string v0, "notification"

    .line 2151
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2152
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 2154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/mrzhna/Client;->m_cancel_all_time:J

    .line 2156
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    const-string v1, "PendingIDs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2157
    iget-object v3, p0, Lcom/netease/mrzhna/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, ","

    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2159
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 2163
    :try_start_0
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2164
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/netease/mrzhna/AlarmReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "ScheduleNotice"

    .line 2165
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x20000000

    .line 2170
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_0

    const/high16 v4, 0x22000000

    .line 2175
    :cond_0
    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "alarm"

    .line 2178
    invoke-virtual {p0, v3}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 2179
    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public cancelBackgroundProgress()V
    .locals 2

    .line 3787
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v0}, Lcom/netease/neox/NeoXView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    const-string v1, "netease_g66_background"

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    return-void
.end method

.method cancelNotice(I)Z
    .locals 8

    const-string v0, "notification"

    .line 2196
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2197
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2198
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2199
    iget-object v1, p0, Lcom/netease/mrzhna/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    const-string v2, "PendingIDs"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    .line 2200
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2202
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_1

    .line 2204
    aget-object v7, v1, v6

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 2206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v6

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2209
    :cond_1
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/mrzhna/AlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ScheduleNotice"

    .line 2211
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 2216
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    const/high16 v1, 0x22000000

    .line 2221
    :cond_2
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "alarm"

    .line 2224
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2225
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v5
.end method

.method checkRecordingPermission()Z
    .locals 3

    const/4 v0, 0x0

    .line 3008
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/mrzhna/Client;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Documents/test.amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3009
    invoke-virtual {p0, v1}, Lcom/netease/mrzhna/Client;->startRecording(Ljava/lang/String;)Z

    .line 3010
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    .line 3011
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public clearChannel()V
    .locals 0

    return-void
.end method

.method protected createScreenshotObserver()V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_screenshot_observer:Lcom/netease/mrzhna/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0}, Lcom/netease/mrzhna/ScreenShotObserver;->stopListen()V

    .line 876
    :cond_0
    new-instance v0, Lcom/netease/mrzhna/ScreenShotObserver;

    invoke-direct {v0, p0, p0}, Lcom/netease/mrzhna/ScreenShotObserver;-><init>(Landroid/content/Context;Lcom/netease/mrzhna/IScreenShotListener;)V

    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_screenshot_observer:Lcom/netease/mrzhna/ScreenShotObserver;

    .line 877
    invoke-virtual {v0}, Lcom/netease/mrzhna/ScreenShotObserver;->startListen()V

    return-void
.end method

.method public final cropImage(Ljava/lang/String;IIIILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    if-lez p4, :cond_6

    if-gtz p5, :cond_1

    goto :goto_0

    .line 3130
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 3131
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3132
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3133
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 3134
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_6

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    add-int v3, p2, p4

    if-gt v3, v2, :cond_6

    add-int v2, p3, p5

    if-le v2, v1, :cond_3

    goto :goto_0

    .line 3143
    :cond_3
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    return v0

    .line 3148
    :cond_4
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5

    return v0

    .line 3153
    :cond_5
    invoke-direct {p0, p1, p6}, Lcom/netease/mrzhna/Client;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1000
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1002
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1003
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 1005
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 1009
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1011
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1012
    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnChar(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    if-ne v1, p1, :cond_1

    const/4 p1, 0x3

    .line 1021
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Client;->setVolumeControlStream(I)V

    const-string v1, "audio"

    .line 1022
    invoke-virtual {p0, v1}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1023
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 1025
    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_1
    return v0
.end method

.method public enableAudioVolumeListener(Z)V
    .locals 4

    const-string v0, "NeoX"

    if-nez p1, :cond_2

    const-string p1, "[kk]Unregister audio volume listener......"

    .line 1109
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_ringermode_receiver:Lcom/netease/mrzhna/RingerModeReceiver;

    if-eqz p1, :cond_0

    .line 1111
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Client;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1112
    :cond_0
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_audiovolume_observer:Lcom/netease/mrzhna/AudioVolumeContentObserver;

    if-eqz p1, :cond_1

    .line 1113
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_audiovolume_observer:Lcom/netease/mrzhna/AudioVolumeContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void

    .line 1118
    :cond_2
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_3

    .line 1121
    iget-object v1, p0, Lcom/netease/mrzhna/Client;->m_ringermode_receiver:Lcom/netease/mrzhna/RingerModeReceiver;

    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Lcom/netease/mrzhna/Client;->registerReceiverForApi33AndAbove(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 1125
    :cond_3
    iget-object v1, p0, Lcom/netease/mrzhna/Client;->m_ringermode_receiver:Lcom/netease/mrzhna/RingerModeReceiver;

    invoke-virtual {p0, v1, p1}, Lcom/netease/mrzhna/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const-string p1, "audio"

    .line 1129
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    const/4 v2, 0x3

    .line 1131
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 1132
    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnVolumeSilent(I)V

    .line 1133
    :cond_4
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnRingerMode(I)V

    .line 1134
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_audiovolume_observer:Lcom/netease/mrzhna/AudioVolumeContentObserver;

    iput v2, p1, Lcom/netease/mrzhna/AudioVolumeContentObserver;->m_pre_volume:I

    .line 1136
    :cond_5
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/netease/mrzhna/Client;->m_audiovolume_observer:Lcom/netease/mrzhna/AudioVolumeContentObserver;

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p1, "[kk]Register Audio Volume Listener Done!!"

    .line 1137
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableFoldingModeObserver(Z)V
    .locals 4

    const-string v0, "NeoX"

    if-nez p1, :cond_1

    const-string p1, "[kk]Unregister folding mode observer......"

    .line 3716
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_folding_mode_observer:Lcom/netease/mrzhna/FoldingModeContentObserver;

    if-eqz p1, :cond_0

    .line 3718
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_folding_mode_observer:Lcom/netease/mrzhna/FoldingModeContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "oplus_system_folding_mode"

    .line 3723
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3724
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/mrzhna/Client;->m_folding_mode_observer:Lcom/netease/mrzhna/FoldingModeContentObserver;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p1, "[kk]Register Folding Mode Observer Done!!"

    .line 3725
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method envManager_enableLog(Z)V
    .locals 0

    .line 3565
    invoke-static {p1}, Lcom/netease/environment/EnvManager;->enableLog(Z)V

    return-void
.end method

.method envManager_initSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3561
    invoke-static {p0, p1, p2, p3}, Lcom/netease/environment/EnvManager;->initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method envManager_reviewNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3570
    invoke-static {p1}, Lcom/netease/environment/EnvManager;->reviewNicknameV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method envManager_reviewWords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3574
    invoke-static {p1, p2, p3}, Lcom/netease/environment/EnvManager;->reviewWordsV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method envManager_reviewWordsV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3577
    invoke-static {p1, p2, p3}, Lcom/netease/environment/EnvManager;->reviewWordsV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public extendFunc(ILjava/lang/String;)V
    .locals 1

    .line 850
    new-instance v0, Lcom/netease/mrzhna/Client$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mrzhna/Client$7;-><init>(Lcom/netease/mrzhna/Client;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 2270
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2271
    :try_start_1
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 2276
    :catch_1
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getAvailableInternalMemorySize()F
    .locals 4

    .line 3027
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 3028
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 3030
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    long-to-float v1, v2

    mul-float v0, v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method getBatteryLevel()F
    .locals 5

    .line 2847
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-lt v0, v3, :cond_0

    .line 2849
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/netease/mrzhna/Client;->registerReceiverForApi33AndAbove(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 2853
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lcom/netease/mrzhna/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const-string v1, "level"

    const/4 v2, -0x1

    .line 2855
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 2856
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v1, v2, :cond_5

    if-ne v3, v2, :cond_1

    goto :goto_3

    :cond_1
    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v1, v3

    const-string v4, "status"

    .line 2865
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    add-float/2addr v1, v3

    :cond_4
    return v1

    :cond_5
    :goto_3
    const/high16 v0, 0x42480000    # 50.0f

    return v0
.end method

.method getBrightness()F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2909
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 2913
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/16 v3, 0x80

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 2915
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2917
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Error"

    const-string v3, "Call has thrown an exception"

    .line 2918
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2921
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method getCCMini()Lcom/netease/mrzhna/CCMini;
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_ccmini:Lcom/netease/mrzhna/CCMini;

    if-nez v0, :cond_0

    .line 1488
    new-instance v0, Lcom/netease/mrzhna/CCMini;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/CCMini;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_ccmini:Lcom/netease/mrzhna/CCMini;

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_ccmini:Lcom/netease/mrzhna/CCMini;

    return-object v0
.end method

.method getChannel()Lcom/netease/mrzhna/Channel;
    .locals 1

    .line 1477
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    if-nez v0, :cond_0

    .line 1479
    new-instance v0, Lcom/netease/mrzhna/Channel;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/Channel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    return-object v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 1

    .line 1034
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getClipboardText()Ljava/lang/String;
    .locals 2

    .line 2251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2253
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2256
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2259
    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getCountry()Ljava/lang/String;
    .locals 1

    .line 2813
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 377
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDistroId()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 352
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 353
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "com.netease.apk_distro/config.json"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 360
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 363
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "distro_id"

    .line 364
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method getGovernorInfo()Ljava/lang/String;
    .locals 7

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    const/16 v1, 0xa

    .line 2795
    invoke-direct {p0, v0, v1}, Lcom/netease/mrzhna/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 2796
    invoke-direct {p0, v2, v1}, Lcom/netease/mrzhna/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    .line 2797
    invoke-direct {p0, v3, v1}, Lcom/netease/mrzhna/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 2798
    invoke-direct {p0, v4, v1}, Lcom/netease/mrzhna/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"

    .line 2799
    invoke-direct {p0, v5, v1}, Lcom/netease/mrzhna/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v1, v5, v0

    .line 2801
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2803
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHunterDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2391
    invoke-static {}, Lcom/netease/androidcrashhandler/DeviceInfo;->getInstance()Lcom/netease/androidcrashhandler/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    .line 2393
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2394
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2395
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2396
    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "phone"

    .line 1365
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1366
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NeoXDevice"

    const-string v2, "Client.getIMSI TelephonyManager getSubscriberId() ------> EXCEPTION!"

    .line 1370
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public final getImageHeight(Ljava/lang/String;)I
    .locals 2

    .line 3077
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 3078
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3079
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3080
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    return p1
.end method

.method public final getImageWidth(Ljava/lang/String;)I
    .locals 2

    .line 3069
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 3070
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3071
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3072
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    return p1
.end method

.method public getInternalDataPath()Ljava/lang/String;
    .locals 1

    .line 2982
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getIpInfo()Ljava/lang/String;
    .locals 11

    const-string v0, ""

    const-string v1, "NeoX"

    .line 1276
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "wlan0"

    .line 1277
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "en0"

    .line 1278
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "eth0"

    .line 1279
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getNetworkType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "get ip: none wifi ip"

    .line 1282
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "rmnet0"

    .line 1283
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "ppp0"

    .line 1284
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1289
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 1290
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 1295
    :cond_2
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1297
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1299
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 1307
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    .line 1308
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v9, v6, :cond_1

    .line 1310
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InterfaceAddress;

    .line 1311
    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 1313
    invoke-virtual {v7}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    array-length v8, v8

    const/4 v10, 0x4

    if-eq v8, v10, :cond_5

    goto :goto_3

    .line 1318
    :cond_5
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1319
    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v3

    .line 1321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "netName: ip is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " netmask is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/netease/mrzhna/Client;->calcNetmaskByPrefixLength(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/netease/mrzhna/Client;->calcNetmaskByPrefixLength(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    const-string v2, "no ip address found"

    .line 1326
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v2, "encounter error when find ip"

    .line 1331
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method getLanguage()Ljava/lang/String;
    .locals 1

    .line 2808
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMaliGPUCoreCount()I
    .locals 5

    const/4 v0, -0x1

    .line 2930
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/sys/class/misc/mali0/device/core_mask"

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    .line 2935
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 2938
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AVAILABLE CORE MASK : "

    .line 2940
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    const/16 v1, 0x16

    .line 2942
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0X"

    .line 2943
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 2946
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-double/2addr v1, v3

    double-to-int v0, v1

    :catch_0
    :cond_2
    return v0
.end method

.method public getNeoXConfig(Ljava/lang/String;Z)Z
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getNeoXConfigs()[Ljava/lang/String;
    .locals 4

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    iget-object v1, p0, Lcom/netease/mrzhna/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 1054
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1056
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 1058
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1062
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getNeoXPlatformString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1046
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v1, "NULL"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNetworkType()I
    .locals 3

    const-string v0, "connectivity"

    .line 1900
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1901
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1905
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1907
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    .line 1909
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getPhoneInfo()Ljava/lang/String;
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_iaware_gamesdk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

    invoke-virtual {v0}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->getPhoneInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateDataPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2987
    invoke-virtual {p0, p1, v0}, Lcom/netease/mrzhna/Client;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getPushToken()Ljava/lang/String;
    .locals 1

    .line 2233
    iget-boolean v0, p0, Lcom/netease/mrzhna/Client;->m_is_push_manager_init:Z

    if-eqz v0, :cond_0

    .line 2235
    invoke-static {}, Lcom/netease/pushclient/PushManager;->getDevId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealSize()Landroid/graphics/Point;
    .locals 4

    .line 1090
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1091
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1092
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 1094
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 1098
    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1099
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1100
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1101
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    return-object v0
.end method

.method public getRotation()I
    .locals 2

    .line 2504
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0
.end method

.method public getRunningProcess()[Ljava/lang/String;
    .locals 3

    .line 1262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "activity"

    .line 1264
    invoke-virtual {p0, v1}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1265
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1266
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1268
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRunningTaskId()I
    .locals 3

    const-string v0, "activity"

    .line 2489
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 2490
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 2491
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2492
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2493
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2494
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2495
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getSimCountry()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "phone"

    .line 2820
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2821
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NeoXDevice"

    const-string v2, "Client.getSimCountry TelephonyManager getSimCountryIso() ------> EXCEPTION!"

    .line 2825
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method getTotalInternalMemorySize()J
    .locals 4

    .line 3039
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 3040
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3041
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 3042
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method getTotalMemory()I
    .locals 4

    .line 2833
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "activity"

    .line 2837
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2838
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 2839
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 2840
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method getTotalMemorySize(Landroid/content/Context;)J
    .locals 4

    const-string p1, "/proc/meminfo"

    .line 3054
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 3055
    new-instance p1, Ljava/io/BufferedReader;

    const/16 v1, 0x800

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 3056
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemTotal:"

    .line 3057
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3058
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    const-string p1, "\\D+"

    const-string v1, ""

    .line 3059
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    return-wide v0

    :catch_0
    move-exception p1

    .line 3061
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 8

    .line 1213
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_udid:Ljava/lang/String;

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "phone"

    .line 1217
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1218
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_udid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NeoXDevice"

    const-string v2, "Client.getUDID TelephonyManager getDeviceId() ------> EXCEPTION!"

    .line 1222
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1226
    :goto_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_udid:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1228
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 1229
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_udid:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1235
    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 1236
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 1237
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1239
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    const-string v4, "%02X%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1241
    aget-byte v6, v0, v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    array-length v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_0

    const-string v6, "-"

    goto :goto_2

    :cond_0
    const-string v6, ""

    :goto_2
    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1243
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_udid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1252
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_udid:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "neox_root"

    .line 1378
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_neox_root:Ljava/lang/String;

    return-object p1

    .line 1382
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1387
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Client;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWindowVisibleDisplayFrameRect()Landroid/graphics/Rect;
    .locals 2

    .line 2522
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2523
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2525
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public hasExtendFunc(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public hideVirtualKeyboard()V
    .locals 3

    const-string v0, "input_method"

    .line 1158
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    const-string v0, "NeoX"

    const-string v1, "HideVirtualKeyboard: Input Method Service not found"

    .line 1161
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1165
    :cond_0
    iget-object v1, p0, Lcom/netease/mrzhna/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v1}, Lcom/netease/neox/NeoXView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected initPharos()V
    .locals 2

    .line 767
    new-instance v0, Lcom/netease/mrzhna/Client$6;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/Client$6;-><init>(Lcom/netease/mrzhna/Client;)V

    .line 832
    invoke-static {}, Lcom/netease/ntunisdk/base/SDKPharos;->getInstance()Lcom/netease/ntunisdk/base/SDKPharos;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/netease/ntunisdk/base/SDKPharos;->setContext(Landroid/content/Context;)V

    .line 833
    invoke-static {}, Lcom/netease/ntunisdk/base/SDKPharos;->getInstance()Lcom/netease/ntunisdk/base/SDKPharos;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/SDKPharos;->setPharosListener(Lcom/netease/pharos/PharosListener;)V

    return-void
.end method

.method protected initPlugins(Lcom/netease/neox/PluginManager;)V
    .locals 1

    .line 210
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->initPlugins(Lcom/netease/neox/PluginManager;)V

    .line 211
    new-instance v0, Lcom/netease/neox/PluginApp;

    invoke-direct {v0}, Lcom/netease/neox/PluginApp;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 212
    new-instance v0, Lcom/netease/neox/PluginCCLive;

    invoke-direct {v0}, Lcom/netease/neox/PluginCCLive;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    return-void
.end method

.method public initWebView()V
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_webview_helper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    if-nez v0, :cond_0

    .line 1172
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;-><init>(Landroid/app/NativeActivity;)V

    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_webview_helper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    :cond_0
    return-void
.end method

.method public insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 3272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "begin: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "insertImage"

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3278
    :try_start_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3279
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3280
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3283
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3285
    new-instance p2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3286
    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    const-string v2, "new file: %s, succ: %b, version: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 3288
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_6

    .line 3291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_6

    const-string p2, "image"

    .line 3292
    invoke-virtual {p0, p2}, Lcom/netease/mrzhna/Client;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 3293
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3294
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 3296
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3297
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    const-string v1, "new file2: %s, succ: %b"

    new-array v2, v7, [Ljava/lang/Object;

    .line 3298
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_display_name"

    .line 3302
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    .line 3303
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "relative_path"

    const-string v2, "Pictures/"

    .line 3306
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3310
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3311
    invoke-virtual {v2, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3315
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz p2, :cond_2

    .line 3317
    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_4

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 3322
    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 3323
    invoke-virtual {p2, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 3325
    :cond_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 3328
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    if-eqz p2, :cond_5

    .line 3332
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3338
    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    .line 3336
    :try_start_3
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_3
    move-object p2, v0

    goto :goto_5

    .line 3338
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3339
    throw p2

    :cond_6
    :goto_5
    const-string v0, ""

    if-ne p3, v0, :cond_7

    .line 3344
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 3347
    :cond_7
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 3349
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p3, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p3}, Lcom/netease/mrzhna/Client;->sendBroadcast(Landroid/content/Intent;)V

    .line 3350
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendBroadcast: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception p2

    const-string p3, "Failed to insert image"

    .line 3353
    invoke-static {p4, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p2, p1

    :goto_6
    if-eqz p2, :cond_8

    .line 3358
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3359
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object p1
.end method

.method public insertVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 3369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "begin: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "insertVideo"

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 3372
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3373
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 3376
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3378
    new-instance p2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3379
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 3380
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "new file: %s, succ: %b, version: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 3383
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt p1, v2, :cond_6

    const-string p1, "video"

    .line 3384
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Client;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 3385
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3386
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 3388
    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3389
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    new-array v0, v5, [Ljava/lang/Object;

    .line 3390
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "new file2: %s, succ: %b"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 3394
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_display_name"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string v2, "video/mp4"

    .line 3395
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "relative_path"

    const-string v2, "DCIM/"

    .line 3398
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3402
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3403
    invoke-virtual {v2, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 3407
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz p1, :cond_2

    .line 3409
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 3414
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 3415
    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 3417
    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 3420
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    if-eqz p1, :cond_5

    .line 3424
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3429
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3431
    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_4

    :goto_3
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 3432
    throw p1

    :cond_6
    :goto_4
    const-string p1, ""

    if-ne p3, p1, :cond_7

    .line 3437
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 3444
    :cond_7
    :try_start_2
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 3445
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Lcom/netease/mrzhna/Client;->sendBroadcast(Landroid/content/Intent;)V

    .line 3446
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "url: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    const-string p2, "Failed to insert video"

    .line 3450
    invoke-static {p4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-object v1
.end method

.method public installLocalApkFile(Ljava/lang/String;)I
    .locals 4

    const-string v0, "InstallPackage"

    :try_start_0
    const-string v1, "Begin install apk"

    .line 3806
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExternalPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 3809
    invoke-virtual {p0, v1}, Lcom/netease/mrzhna/Client;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    .line 3810
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v2

    xor-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-string v1, "User has select no longer request"

    .line 3812
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/Client;->_installApk(Ljava/lang/String;)Lcom/netease/mrzhna/Client$installApkErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mrzhna/Client$installApkErrorCode;->ordinal()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    sget-object p1, Lcom/netease/mrzhna/Client$installApkErrorCode;->innerException:Lcom/netease/mrzhna/Client$installApkErrorCode;

    invoke-virtual {p1}, Lcom/netease/mrzhna/Client$installApkErrorCode;->ordinal()I

    move-result p1

    return p1
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 2282
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 2285
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method public isApplicationBroughtToBackground()Z
    .locals 4

    const-string v0, "activity"

    .line 2471
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 2472
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 2473
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2474
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2475
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v3
.end method

.method public isBackgroundEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isBlueToothHeadsetConnected()Z
    .locals 5

    const/4 v0, 0x0

    .line 1181
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "NeoX"

    .line 1182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlueToothHeadsetConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1186
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public isClientActivityStopped()Z
    .locals 1

    .line 2484
    iget-boolean v0, p0, Lcom/netease/mrzhna/Client;->m_activity_stopped:Z

    return v0
.end method

.method public isDeviceRooted()Z
    .locals 1

    .line 1257
    invoke-static {}, Lcom/netease/mrzhna/OutlawDeviceDetector;->isRooted()Z

    move-result v0

    return v0
.end method

.method public isFoldingModeOpen()Z
    .locals 3

    .line 3730
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_folding_mode_observer:Lcom/netease/mrzhna/FoldingModeContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3731
    iget v0, v0, Lcom/netease/mrzhna/FoldingModeContentObserver;->state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMuMu()Z
    .locals 1

    .line 3264
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isMuMu()Z

    move-result v0

    return v0
.end method

.method public isNotchScreen()Z
    .locals 15

    const-string v0, "hasNotchInScreen NoSuchMethodException"

    const-string v1, "hasNotchInScreen ClassNotFoundException"

    const-string v2, "finish query the Xiaomi."

    const-string v3, "finish query the oppo."

    const-string v4, "hasNotchInScreen Exception"

    const-string v5, "finish query vivo."

    const-string v6, "finish query huawei."

    const-string v7, "NeoX"

    const/4 v8, 0x0

    .line 3590
    :try_start_0
    const-class v9, Landroid/app/Activity;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v10, "com.huawei.android.util.HwNotchSizeUtil"

    .line 3591
    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "hasNotchInScreen"

    new-array v11, v8, [Ljava/lang/Class;

    .line 3592
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    .line 3593
    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3602
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 3600
    :catch_0
    :try_start_1
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3598
    :catch_1
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3596
    :catch_2
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3602
    :goto_0
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_1
    const/4 v6, 0x1

    .line 3609
    :try_start_2
    const-class v10, Landroid/app/Activity;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-string v11, "android.util.FtFeature"

    .line 3610
    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "isFeatureSupport"

    new-array v12, v8, [Ljava/lang/Class;

    .line 3611
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v6, [Ljava/lang/Object;

    const/16 v13, 0x20

    .line 3613
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v8

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v14, "hasNotchInScreen test"

    .line 3614
    invoke-static {v7, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v14, v6, [Ljava/lang/Object;

    .line 3615
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v8

    invoke-virtual {v11, v10, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v13, v6, [Ljava/lang/Object;

    const/16 v14, 0x8

    .line 3616
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-virtual {v11, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_3
    const/4 v12, 0x0

    .line 3623
    :catch_4
    :try_start_4
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_5
    const/4 v12, 0x0

    .line 3621
    :catch_6
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_7
    const/4 v12, 0x0

    .line 3619
    :catch_8
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3625
    :goto_2
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    :try_start_5
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3637
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 3635
    :catch_9
    :try_start_6
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3637
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3643
    :goto_3
    :try_start_7
    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v3, "android.os.SystemProperties"

    .line 3644
    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    .line 3647
    const-class v10, Ljava/lang/String;

    aput-object v10, v5, v8

    .line 3648
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v5, v6

    const-string v10, "getInt"

    .line 3649
    invoke-virtual {v1, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    .line 3651
    new-instance v10, Ljava/lang/String;

    const-string v11, "ro.miui.notch"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v10, v3, v8

    .line 3652
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 3653
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v6

    .line 3655
    invoke-virtual {v5, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v1, v10, :cond_0

    const/4 v1, 0x1

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 3659
    :goto_4
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 3657
    :catch_a
    :try_start_8
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 3659
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_5
    if-nez v9, :cond_1

    if-nez v12, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v8, 0x1

    .line 3665
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check if notch screen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 3659
    :goto_6
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    throw v0

    .line 3637
    :goto_7
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    throw v0

    .line 3625
    :goto_8
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    throw v0

    .line 3602
    :goto_9
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    throw v0
.end method

.method isRecording()Z
    .locals 1

    .line 2977
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isRunningOnEmulator()Z
    .locals 5

    .line 385
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk_x86"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "vbox86p"

    .line 386
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 391
    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 396
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "BlueStacks"

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 402
    :cond_2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 407
    :cond_3
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 412
    :cond_4
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "goldfish"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method isTablet()Z
    .locals 2

    .line 2074
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minimizeApp()V
    .locals 1

    const/4 v0, 0x1

    .line 3738
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->moveTaskToBack(Z)Z

    return-void
.end method

.method newCustomIntent(Ljava/lang/String;)Z
    .locals 12

    const-string v0, "putExtra"

    const-string v1, "flags"

    const-string v2, "packageName"

    const-string v3, "className"

    const-string v4, "uri"

    const-string v5, "action"

    const-string v6, "NeoX"

    const/4 v7, 0x0

    if-eqz p1, :cond_11

    .line 1716
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newCustomIntent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1726
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, ""

    if-eqz v9, :cond_0

    .line 1727
    :try_start_1
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1728
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newCustomIntent:action="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v5, v10

    .line 1730
    :goto_0
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1731
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1732
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newCustomIntent:uri="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object v4, v10

    :goto_1
    const-string v9, "packageContext"

    .line 1734
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string p1, "newCustomIntent:packageContext=this"

    .line 1736
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p0

    .line 1738
    :cond_2
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1739
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1740
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newCustomIntent:className="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move-object v3, v10

    .line 1742
    :goto_2
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1743
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newCustomIntent:packageName="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_4
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1747
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newCustomIntent:flags="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 1751
    :goto_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_6

    .line 1752
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1753
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "newCustomIntent:setClassName1"

    .line 1754
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1756
    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1757
    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "newCustomIntent:setClassName2"

    .line 1758
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_7
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1761
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newCustomIntent:setData "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1769
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newCustomIntent:setAction "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v1, :cond_a

    .line 1773
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "newCustomIntent:addFlags"

    .line 1774
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_a
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    const-string p1, "newCustomIntent has putExtra"

    .line 1778
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1780
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1781
    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1782
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1783
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newCustomIntent:key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1785
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newCustomIntent:typeValPair="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "String"

    .line 1787
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1788
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1789
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_c
    const-string v8, "int"

    .line 1791
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1792
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 1793
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    :cond_d
    const-string v8, "long"

    .line 1795
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1796
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    .line 1797
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_5

    :cond_e
    const-string v8, "double"

    .line 1799
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1800
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    .line 1801
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_5

    :cond_f
    const-string v8, "boolean"

    .line 1803
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1804
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    .line 1805
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_5

    .line 1810
    :cond_10
    invoke-virtual {p0, v2}, Lcom/netease/mrzhna/Client;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1814
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    return v7
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1496
    invoke-super {p0, p1, p2, p3}, Lcom/netease/neox/NeoXClient;->onActivityResult(IILandroid/content/Intent;)V

    .line 1498
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_image_picker:Lcom/netease/mrzhna/ImagePicker;

    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mrzhna/ImagePicker;->onActivityResult(IILandroid/content/Intent;)V

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    if-eqz v0, :cond_1

    .line 1505
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mrzhna/Channel;->on_activityResult(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "NeoXDevice"

    const-string v1, "NeoX"

    const-string v2, "Client onCreate"

    .line 429
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Lcom/netease/neox/NativeInterface;->Dummy()V

    const-string v2, "Client onCreate after dummy"

    .line 431
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget-object v2, Lcom/netease/mrzhna/Client;->s_NeoXClient_has_created:Ljava/lang/Boolean;

    .line 433
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onCreate(Landroid/os/Bundle;)V

    .line 435
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Client has created"

    .line 436
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "NeoXView"

    .line 440
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Client;->getPlugin(Ljava/lang/String;)Lcom/netease/neox/IPlugin;

    move-result-object p1

    check-cast p1, Lcom/netease/neox/PluginNeoXView;

    invoke-virtual {p1}, Lcom/netease/neox/PluginNeoXView;->getView()Lcom/netease/neox/NeoXView;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_view:Lcom/netease/neox/NeoXView;

    const-string p1, "neox_config"

    const/4 v1, 0x0

    .line 441
    invoke-virtual {p0, p1, v1}, Lcom/netease/mrzhna/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string p1, "neox_notif"

    .line 442
    invoke-virtual {p0, p1, v1}, Lcom/netease/mrzhna/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    .line 443
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "NeoXRoot"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_neox_root:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "neox_root"

    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Client;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_neox_root:Ljava/lang/String;

    .line 451
    :cond_1
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->init(Landroid/content/Context;)V

    .line 452
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mrzhna/Client;->m_dump_game:Ljava/lang/String;

    const-string v2, "project"

    invoke-virtual {p1, v2, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mrzhna/Client;->m_dump_appkey:Ljava/lang/String;

    const-string v2, "appkey"

    invoke-virtual {p1, v2, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    const-string v1, "engine_version"

    const-string v2, "2024_12_release_250522_191b614b1"

    invoke-virtual {p1, v1, v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    const-string v1, "callback_so_path"

    const-string v2, "libclient.so"

    invoke-virtual {p1, v1, v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setSoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    const-string v1, "callback_method_name"

    const-string v2, "AndroidNativeCrashCallback2"

    invoke-virtual {p1, v1, v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setSoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.netease.mrzhtw"

    .line 459
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "before set crashhunter"

    .line 461
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    const-string v2, "https://appdump.nie.easebar.com/upload"

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setUrl(Ljava/lang/String;)V

    const-string v1, "after set crashhunter"

    .line 463
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_2
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    new-instance v1, Lcom/netease/mrzhna/Client$1;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Client$1;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p1, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setJavaCrashCallBack(Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;)V

    .line 482
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    new-instance v1, Lcom/netease/mrzhna/Client$2;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Client$2;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p1, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setIPrePostCallBack(Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;)V

    .line 508
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->startHuntingCrash()V

    .line 509
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getUploadFileDir()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Crash Hunter uploadFileDir"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance p1, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

    invoke-direct {p1}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;-><init>()V

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_iaware_gamesdk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

    .line 515
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->registerGame(Ljava/lang/String;)Z

    .line 522
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 523
    new-instance p1, Lcom/netease/mrzhna/InputView;

    invoke-direct {p1, p0}, Lcom/netease/mrzhna/InputView;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    .line 525
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getChannel()Lcom/netease/mrzhna/Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    .line 526
    invoke-virtual {p1}, Lcom/netease/mrzhna/Channel;->initialize()V

    .line 529
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->hideVirtualKeyboard()V

    .line 531
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->initWebView()V

    .line 533
    new-instance p1, Lcom/netease/mrzhna/AudioVolumeContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/netease/mrzhna/AudioVolumeContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_audiovolume_observer:Lcom/netease/mrzhna/AudioVolumeContentObserver;

    .line 534
    new-instance p1, Lcom/netease/mrzhna/RingerModeReceiver;

    invoke-direct {p1}, Lcom/netease/mrzhna/RingerModeReceiver;-><init>()V

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_ringermode_receiver:Lcom/netease/mrzhna/RingerModeReceiver;

    .line 535
    new-instance p1, Lcom/netease/mrzhna/FoldingModeContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/netease/mrzhna/FoldingModeContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_folding_mode_observer:Lcom/netease/mrzhna/FoldingModeContentObserver;

    .line 537
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->initPharos()V

    .line 540
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 541
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/netease/mrzhna/Client;->m_root_view_height:I

    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/netease/mrzhna/Client;->m_root_view_width:I

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/netease/mrzhna/Client$3;

    invoke-direct {v2, p0, p1}, Lcom/netease/mrzhna/Client$3;-><init>(Lcom/netease/mrzhna/Client;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 590
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getNetworkType()I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/Client;->m_current_network_type:I

    :try_start_0
    const-string p1, "phone"

    .line 593
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 594
    new-instance v1, Lcom/netease/mrzhna/Client$4;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Client$4;-><init>(Lcom/netease/mrzhna/Client;)V

    const-string v2, "listen networkchange state "

    .line 617
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x40

    .line 618
    invoke-virtual {p1, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/16 v2, 0x20

    .line 619
    invoke-virtual {p1, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Client.onCreate callStateListener = new PhoneStateListenerstate() ------> EXCEPTION!"

    .line 623
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 627
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    .line 628
    new-instance p1, Lcom/netease/mrzhna/Client$5;

    invoke-direct {p1, p0}, Lcom/netease/mrzhna/Client$5;-><init>(Lcom/netease/mrzhna/Client;)V

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    .line 696
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_3

    const-string p1, "clipboard"

    .line 698
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_clipboard:Landroid/content/ClipboardManager;

    .line 701
    :cond_3
    invoke-direct {p0}, Lcom/netease/mrzhna/Client;->setNavigationBarVisibility()V

    .line 702
    invoke-direct {p0}, Lcom/netease/mrzhna/Client;->setDisplayCutoutModeShortEdges()V

    .line 704
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_4

    .line 705
    new-instance p1, Landroid/app/NotificationChannel;

    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "neox_channel_01"

    invoke-direct {p1, v2, v0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v0, "notification"

    .line 706
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 707
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 711
    :cond_4
    new-instance p1, Lcom/netease/mrzhna/KeyMouseModeReceiver;

    invoke-direct {p1}, Lcom/netease/mrzhna/KeyMouseModeReceiver;-><init>()V

    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_keymousemode_receiver:Lcom/netease/mrzhna/KeyMouseModeReceiver;

    .line 712
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.netease.intent.ACTION_ENABLE_KEYMOUSE"

    .line 713
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.netease.intent.ACTION_DISABLE_KEYMOUSE"

    .line 714
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_5

    .line 717
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_keymousemode_receiver:Lcom/netease/mrzhna/KeyMouseModeReceiver;

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/netease/mrzhna/Client;->registerReceiverForApi33AndAbove(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_keymousemode_receiver:Lcom/netease/mrzhna/KeyMouseModeReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mrzhna/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_screenshot_observer:Lcom/netease/mrzhna/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {v0}, Lcom/netease/mrzhna/ScreenShotObserver;->stopListen()V

    const/4 v0, 0x0

    .line 974
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_screenshot_observer:Lcom/netease/mrzhna/ScreenShotObserver;

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    if-eqz v0, :cond_1

    .line 980
    invoke-virtual {v0}, Lcom/netease/mrzhna/Channel;->on_destroy()V

    .line 982
    :cond_1
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1512
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onNewIntent(Landroid/content/Intent;)V

    .line 1514
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {v0, p1}, Lcom/netease/mrzhna/Channel;->on_newIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 883
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onPause()V

    .line 885
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_screenshot_observer:Lcom/netease/mrzhna/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0}, Lcom/netease/mrzhna/ScreenShotObserver;->stopListen()V

    .line 895
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnPause()V

    .line 897
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    if-eqz v0, :cond_1

    .line 899
    invoke-virtual {v0}, Lcom/netease/mrzhna/Channel;->on_pause()V

    :cond_1
    const/4 v0, 0x1

    .line 903
    iput-boolean v0, p0, Lcom/netease/mrzhna/Client;->m_activity_paused:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1599
    invoke-static {p1, p2, p3}, Lcom/netease/pushclient/PushManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1601
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "onRequestPermissionsResult requestCode:%d, permissions:%s, grantResults:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Neox"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    array-length v0, p2

    if-lez v0, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 1607
    aget-object v0, p2, v2

    .line 1608
    aget v1, p3, v2

    goto :goto_0

    :cond_0
    const-string v0, ""

    const/4 v1, -0x1

    .line 1610
    :goto_0
    invoke-static {p1, v0, v1}, Lcom/netease/neox/NativeInterface;->NativeOnRequestPermissionsResult(ILjava/lang/String;I)V

    .line 1613
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    if-eqz v0, :cond_1

    .line 1615
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mrzhna/Channel;->on_requestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_1
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 940
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onRestart()V

    .line 942
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_screenshot_observer:Lcom/netease/mrzhna/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0}, Lcom/netease/mrzhna/ScreenShotObserver;->startListen()V

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    if-eqz v0, :cond_1

    .line 951
    invoke-virtual {v0}, Lcom/netease/mrzhna/Channel;->on_restart()V

    :cond_1
    const/4 v0, 0x0

    .line 956
    iput-boolean v0, p0, Lcom/netease/mrzhna/Client;->m_activity_stopped:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 909
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onResume()V

    .line 911
    invoke-direct {p0}, Lcom/netease/mrzhna/Client;->setNavigationBarVisibility()V

    .line 913
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_screenshot_observer:Lcom/netease/mrzhna/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {v0}, Lcom/netease/mrzhna/ScreenShotObserver;->startListen()V

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {v0}, Lcom/netease/mrzhna/Channel;->on_resume()V

    :cond_1
    const/4 v0, 0x0

    .line 935
    iput-boolean v0, p0, Lcom/netease/mrzhna/Client;->m_activity_paused:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1562
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1566
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    if-eqz v0, :cond_0

    .line 1568
    invoke-virtual {v0, p1}, Lcom/netease/mrzhna/Channel;->on_saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onScreenShot(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3241
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "{\"path\": \"%s\", \"width\": %d, \"height\": %d}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3242
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScreenShot: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NeoX"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x5

    .line 3243
    invoke-static {p2, p1}, Lcom/netease/neox/NativeInterface;->NativeCommonCallback(ILjava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1522
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onStart()V

    .line 1524
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_screenshot_observer:Lcom/netease/mrzhna/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 1526
    invoke-virtual {v0}, Lcom/netease/mrzhna/ScreenShotObserver;->startListen()V

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    if-eqz v0, :cond_1

    .line 1533
    invoke-virtual {v0}, Lcom/netease/mrzhna/Channel;->on_start()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1540
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onStop()V

    .line 1542
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_screenshot_observer:Lcom/netease/mrzhna/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 1544
    invoke-virtual {v0}, Lcom/netease/mrzhna/ScreenShotObserver;->stopListen()V

    .line 1549
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_channel:Lcom/netease/mrzhna/Channel;

    if-eqz v0, :cond_1

    .line 1551
    invoke-virtual {v0}, Lcom/netease/mrzhna/Channel;->on_stop()V

    :cond_1
    const/4 v0, 0x1

    .line 1556
    iput-boolean v0, p0, Lcom/netease/mrzhna/Client;->m_activity_stopped:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 962
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 965
    invoke-direct {p0}, Lcom/netease/mrzhna/Client;->setNavigationBarVisibility()V

    :cond_0
    return-void
.end method

.method openGMWebView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public openLocationSetting()V
    .locals 1

    .line 2560
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->neoxLocationMgr:Lcom/netease/mrzhna/NeoXLocationManager;

    if-eqz v0, :cond_0

    .line 2562
    new-instance v0, Lcom/netease/mrzhna/NeoXLocationManager;

    invoke-direct {v0}, Lcom/netease/mrzhna/NeoXLocationManager;-><init>()V

    iput-object v0, p0, Lcom/netease/mrzhna/Client;->neoxLocationMgr:Lcom/netease/mrzhna/NeoXLocationManager;

    .line 2564
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->neoxLocationMgr:Lcom/netease/mrzhna/NeoXLocationManager;

    invoke-virtual {v0, p0}, Lcom/netease/mrzhna/NeoXLocationManager;->openLocationSetting(Landroid/content/Context;)V

    return-void
.end method

.method openSMS(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "smsto:10086"

    .line 1880
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1881
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_0

    const-string v0, "sms_body"

    .line 1884
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1888
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/mrzhna/Client;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method openURL(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1697
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1698
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1701
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/mrzhna/Client;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method openWebView(Ljava/lang/String;)V
    .locals 1

    .line 1625
    new-instance v0, Lcom/netease/mrzhna/Client$8;

    invoke-direct {v0, p0, p1}, Lcom/netease/mrzhna/Client$8;-><init>(Lcom/netease/mrzhna/Client;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method openWebViewWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1637
    new-instance v0, Lcom/netease/mrzhna/Client$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/mrzhna/Client$9;-><init>(Lcom/netease/mrzhna/Client;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method openWebViewWithDataAndBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1649
    new-instance v7, Lcom/netease/mrzhna/Client$10;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/mrzhna/Client$10;-><init>(Lcom/netease/mrzhna/Client;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/netease/mrzhna/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method pauseVideo()V
    .locals 1

    .line 2023
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_movie_view:Lcom/netease/mrzhna/MovieView;

    if-eqz v0, :cond_0

    .line 2025
    invoke-virtual {v0}, Lcom/netease/mrzhna/MovieView;->pauseVideo()V

    :cond_0
    return-void
.end method

.method pickImage(IIII)Z
    .locals 13

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "save_image"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string v10, "crop_image"

    move-object v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move v11, p1

    move v12, p2

    .line 1450
    invoke-virtual/range {v0 .. v12}, Lcom/netease/mrzhna/Client;->pickImageEx(IILjava/lang/String;IIIIIILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method pickImageEx(IILjava/lang/String;IIIIIILjava/lang/String;II)Z
    .locals 15

    move-object v0, p0

    .line 1462
    iget-object v1, v0, Lcom/netease/mrzhna/Client;->m_image_picker:Lcom/netease/mrzhna/ImagePicker;

    if-nez v1, :cond_0

    .line 1463
    new-instance v1, Lcom/netease/mrzhna/ImagePicker;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/ImagePicker;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/netease/mrzhna/Client;->m_image_picker:Lcom/netease/mrzhna/ImagePicker;

    .line 1464
    invoke-virtual {v1}, Lcom/netease/mrzhna/ImagePicker;->init()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1468
    :cond_0
    iget-object v2, v0, Lcom/netease/mrzhna/Client;->m_image_picker:Lcom/netease/mrzhna/ImagePicker;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/netease/mrzhna/ImagePicker;->execute(IILjava/lang/String;IIIIIILjava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method playVideo(Ljava/lang/String;IIIIIII)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "neox_config"

    const/4 v3, 0x0

    .line 1965
    invoke-virtual {v0, v2, v3}, Lcom/netease/mrzhna/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "NeoXRoot"

    const/4 v5, 0x0

    .line 1966
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1967
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/Documents/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1971
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "yuxin: "

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p2

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "yuxin videoMode: "

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "yuxin left: "

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p6

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "yuxin top: "

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p8

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "yuxin width: "

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "yuxin height: "

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/16 v17, 0x1

    const-string v7, "/"

    if-eqz v5, :cond_0

    .line 1982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v8, v1

    const/16 v16, 0x0

    goto :goto_1

    .line 1985
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1991
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 2001
    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/netease/mrzhna/Client;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 2002
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    const/16 v16, 0x1

    .line 2013
    :goto_1
    new-instance v1, Lcom/netease/mrzhna/MovieView;

    invoke-direct {v1, v0}, Lcom/netease/mrzhna/MovieView;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/netease/mrzhna/Client;->m_movie_view:Lcom/netease/mrzhna/MovieView;

    .line 2014
    invoke-virtual {v1}, Lcom/netease/mrzhna/MovieView;->initialize()Z

    .line 2015
    iget-object v7, v0, Lcom/netease/mrzhna/Client;->m_movie_view:Lcom/netease/mrzhna/MovieView;

    move/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p3

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p8

    move/from16 v15, p7

    invoke-virtual/range {v7 .. v16}, Lcom/netease/mrzhna/MovieView;->playVideo(Ljava/lang/String;IIIIIIIZ)V

    return v17

    .line 2008
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video path not exists: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NeoX"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method playVoice(Ljava/lang/String;F)V
    .locals 0

    .line 2992
    sput-object p0, Lcom/netease/mrzhna/GameVoiceUtils;->context:Landroid/app/Activity;

    .line 2993
    invoke-static {p1}, Lcom/netease/mrzhna/GameVoiceUtils;->preparePlay(Ljava/lang/String;)Z

    .line 2994
    invoke-static {p2}, Lcom/netease/mrzhna/GameVoiceUtils;->setPlayVolume(F)V

    .line 2995
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->startPlay()Z

    return-void
.end method

.method public postCrashCallBack()V
    .locals 0

    return-void
.end method

.method public postHunterMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2376
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".other"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->initWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    move-result-object p1

    .line 2377
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p2

    const-string v0, "OTHER"

    invoke-virtual {p2, p1, v1, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->postFile(Lcom/netease/androidcrashhandler/other/NTAssociatedFile;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public postScriptError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2364
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".script"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->initWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    move-result-object p1

    .line 2365
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p2

    const-string v0, "SCRIPT_ERROR"

    invoke-virtual {p2, p1, v1, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->postFile(Lcom/netease/androidcrashhandler/other/NTAssociatedFile;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public postUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method removeWebView()V
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_web_view:Lcom/netease/mrzhna/NeoXWebView;

    if-nez v0, :cond_0

    return-void

    .line 1663
    :cond_0
    new-instance v0, Lcom/netease/mrzhna/Client$11;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/Client$11;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method requestPushService()V
    .locals 1

    .line 2082
    iget-boolean v0, p0, Lcom/netease/mrzhna/Client;->m_is_push_manager_init:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2084
    iput-boolean v0, p0, Lcom/netease/mrzhna/Client;->m_is_push_manager_init:Z

    .line 2085
    new-instance v0, Lcom/netease/mrzhna/Client$12;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/Client$12;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManager;->init(Landroid/content/Context;Lcom/netease/pushclient/PushManager$PushManagerCallback;)V

    :cond_0
    return-void
.end method

.method public restart()V
    .locals 2

    .line 2532
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 2533
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2534
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method resumeVideo()V
    .locals 1

    .line 2033
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_movie_view:Lcom/netease/mrzhna/MovieView;

    if-eqz v0, :cond_0

    .line 2035
    invoke-virtual {v0}, Lcom/netease/mrzhna/MovieView;->resumeVideo()V

    :cond_0
    return-void
.end method

.method saveImageToGallery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 3214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveImageToGallery"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/Client;->isImage(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 3217
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/netease/mrzhna/Client;->insertVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Failed to insert video to media store."

    .line 3219
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    return v3

    .line 3226
    :cond_1
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/netease/mrzhna/Client;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to insert image to media store."

    .line 3228
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v3
.end method

.method public final scaleImage(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-lez p2, :cond_5

    if-gtz p3, :cond_1

    goto :goto_0

    .line 3092
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 3093
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3094
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3095
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 3096
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_5

    if-gtz v1, :cond_2

    goto :goto_0

    .line 3101
    :cond_2
    div-int/2addr v3, p2

    .line 3102
    div-int/2addr v1, p3

    .line 3103
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3105
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3106
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3108
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    return v0

    .line 3113
    :cond_3
    invoke-static {p1, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    return v0

    .line 3118
    :cond_4
    invoke-direct {p0, p1, p4}, Lcom/netease/mrzhna/Client;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method scheduleNotice(IILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 2115
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    const-string p4, "NoticeIDCount"

    const/4 v0, 0x0

    invoke-interface {p2, p4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 2117
    iget-object v1, p0, Lcom/netease/mrzhna/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    const-string v2, "PendingIDs"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2118
    iget-object v3, p0, Lcom/netease/mrzhna/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    .line 2119
    invoke-interface {v3, p4, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    .line 2121
    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2128
    :cond_0
    new-instance p4, Landroid/content/Intent;

    const-class v1, Lcom/netease/mrzhna/AlarmReceiver;

    invoke-direct {p4, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ScheduleNotice"

    .line 2129
    invoke-virtual {p4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "id"

    .line 2130
    invoke-virtual {p4, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "now"

    invoke-virtual {p4, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "text"

    .line 2132
    invoke-virtual {p4, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    .line 2137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    const/high16 p3, 0x12000000

    .line 2141
    :cond_1
    invoke-static {p0, p2, p4, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    const-string p4, "alarm"

    .line 2143
    invoke-virtual {p0, p4}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/AlarmManager;

    .line 2144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return p2
.end method

.method setBrightness(F)V
    .locals 1

    .line 2884
    new-instance v0, Lcom/netease/mrzhna/Client$29;

    invoke-direct {v0, p0, p1}, Lcom/netease/mrzhna/Client$29;-><init>(Lcom/netease/mrzhna/Client;F)V

    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setClipboardText(Ljava/lang/String;)V
    .locals 2

    .line 2245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2246
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_clipboard:Landroid/content/ClipboardManager;

    const-string v1, "com.netease.mrzhna"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    return-void
.end method

.method public setCursorLocked(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nemu.intent.action.MOUSE_INPUT_LOCK_CURSOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3253
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nemu.intent.action.MOUSE_INPUT_UNLOCK_CURSOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3255
    :goto_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3256
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3257
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getRunningTaskId()I

    move-result v1

    const-string v2, "taskId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3258
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->sendBroadcast(Landroid/content/Intent;)V

    .line 3259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBroadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "setCursorLocked"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDumpBasicInfo(Ljava/lang/String;)V
    .locals 7

    .line 2324
    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_dump_basicinfo:Ljava/lang/String;

    const-string v0, ","

    .line 2326
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2327
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2329
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2330
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2332
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDumpGame(Ljava/lang/String;)V
    .locals 0

    .line 2319
    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_dump_game:Ljava/lang/String;

    return-void
.end method

.method public setDumpGameVersion(Ljava/lang/String;)V
    .locals 2

    .line 2406
    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_dump_game_version:Ljava/lang/String;

    .line 2408
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_dump_game_version:Ljava/lang/String;

    const-string v1, "res_version"

    invoke-virtual {p1, v1, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDumpInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2357
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDumpUserDesc(Ljava/lang/String;)V
    .locals 7

    .line 2340
    iput-object p1, p0, Lcom/netease/mrzhna/Client;->m_dump_userdesc:Ljava/lang/String;

    const-string v0, ","

    .line 2342
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2343
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2345
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2346
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2348
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setGMBridgeToken(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setInputViewLocation(IIII)V
    .locals 1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/mrzhna/InputView;->setLocation(IIII)V

    .line 1435
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/mrzhna/InputView;->setBorderless(Z)V

    goto :goto_1

    .line 1427
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/netease/mrzhna/InputView;->setLocation(IIII)V

    .line 1428
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p1, p2}, Lcom/netease/mrzhna/InputView;->setBorderless(Z)V

    .line 1429
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p1}, Lcom/netease/mrzhna/InputView;->getDefaultFontSize()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/mrzhna/InputView;->setFontSize(F)V

    .line 1430
    iget-object p1, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p1}, Lcom/netease/mrzhna/InputView;->getDefaultFontColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/mrzhna/InputView;->setFontColor(I)V

    :goto_1
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    .line 2572
    new-instance v0, Lcom/netease/mrzhna/Client$13;

    invoke-direct {v0, p0, p1, p0}, Lcom/netease/mrzhna/Client$13;-><init>(Lcom/netease/mrzhna/Client;ZLcom/netease/mrzhna/Client;)V

    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLandscape(Z)V
    .locals 1

    .line 1194
    invoke-virtual {p0}, Lcom/netease/mrzhna/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1197
    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x6

    .line 1198
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Client;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1202
    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1203
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Client;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method setVirtualKeyboardType(I)V
    .locals 1

    .line 2959
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {v0, p1}, Lcom/netease/mrzhna/InputView;->setType(I)V

    return-void
.end method

.method public showBackgroundProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 3763
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mrzhna/Client;->createBackgroundProgress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3766
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v0}, Lcom/netease/neox/NeoXView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3767
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 3768
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "g66dev_channel"

    invoke-direct {v2, v0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3769
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 3770
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 3771
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x7f060009

    .line 3772
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, -0xd3c4b7

    .line 3773
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 3774
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    new-array v0, p2, [J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    .line 3775
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 3776
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 3777
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    if-ltz p3, :cond_0

    const/16 p2, 0x64

    .line 3779
    invoke-virtual {p1, p2, p3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    const p2, 0x64f52e

    .line 3781
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showDumpView(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method showGMFloatButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showInputView(Ljava/lang/String;IZIIIIFIII)Z
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {v0, p2}, Lcom/netease/mrzhna/InputView;->setFilterPattern(I)V

    const-string p2, ""

    if-eqz p3, :cond_0

    .line 1395
    iget-object p3, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p3, p2}, Lcom/netease/mrzhna/InputView;->setText(Ljava/lang/String;)V

    .line 1396
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/mrzhna/InputView;->setHint(Ljava/lang/String;)V

    goto :goto_0

    .line 1400
    :cond_0
    iget-object p3, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p3, p2}, Lcom/netease/mrzhna/InputView;->setHint(Ljava/lang/String;)V

    .line 1401
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/mrzhna/InputView;->setText(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    if-eqz p6, :cond_2

    if-nez p7, :cond_1

    goto :goto_1

    .line 1412
    :cond_1
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2, p4, p5, p6, p7}, Lcom/netease/mrzhna/InputView;->setLocation(IIII)V

    .line 1413
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/mrzhna/InputView;->setBorderless(Z)V

    .line 1414
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2, p8}, Lcom/netease/mrzhna/InputView;->setFontSize(F)V

    .line 1415
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2, p9}, Lcom/netease/mrzhna/InputView;->setFontColor(I)V

    goto :goto_2

    .line 1405
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p3, p3}, Lcom/netease/mrzhna/InputView;->setLocation(IIII)V

    .line 1406
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2, p3}, Lcom/netease/mrzhna/InputView;->setBorderless(Z)V

    .line 1407
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2}, Lcom/netease/mrzhna/InputView;->getDefaultFontSize()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/netease/mrzhna/InputView;->setFontSize(F)V

    .line 1408
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2}, Lcom/netease/mrzhna/InputView;->getDefaultFontColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/netease/mrzhna/InputView;->setFontColor(I)V

    .line 1417
    :goto_2
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2, p10}, Lcom/netease/mrzhna/InputView;->setMaxLength(I)V

    .line 1418
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2, p11}, Lcom/netease/mrzhna/InputView;->setReturnKey(I)V

    .line 1419
    iget-object p2, p0, Lcom/netease/mrzhna/Client;->m_input_view:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/mrzhna/InputView;->show(Z)V

    return p1
.end method

.method showMessageBox(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2605
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2606
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 2607
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "ic_launcher"

    .line 2608
    invoke-direct {p0, p2}, Lcom/netease/mrzhna/Client;->getDrawableId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 2609
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    if-eq p3, p2, :cond_4

    const/4 p2, 0x2

    const-string v0, "neox_retry"

    if-eq p3, p2, :cond_3

    const/4 p2, 0x3

    const-string v1, "neox_no"

    const-string v2, "neox_yes"

    if-eq p3, p2, :cond_2

    const/4 p2, 0x4

    if-eq p3, p2, :cond_1

    const/4 p2, 0x5

    if-eq p3, p2, :cond_0

    .line 2735
    new-instance p2, Lcom/netease/mrzhna/Client$27;

    invoke-direct {p2, p0}, Lcom/netease/mrzhna/Client$27;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 2716
    :cond_0
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/mrzhna/Client$26;

    invoke-direct {p3, p0}, Lcom/netease/mrzhna/Client$26;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/netease/mrzhna/Client$25;

    invoke-direct {p3, p0}, Lcom/netease/mrzhna/Client$25;-><init>(Lcom/netease/mrzhna/Client;)V

    .line 2723
    invoke-virtual {p2, p5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 2697
    :cond_1
    invoke-direct {p0, v2}, Lcom/netease/mrzhna/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/mrzhna/Client$24;

    invoke-direct {p3, p0}, Lcom/netease/mrzhna/Client$24;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 2704
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/mrzhna/Client$23;

    invoke-direct {p4, p0}, Lcom/netease/mrzhna/Client$23;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2671
    :cond_2
    invoke-direct {p0, v2}, Lcom/netease/mrzhna/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/mrzhna/Client$22;

    invoke-direct {p3, p0}, Lcom/netease/mrzhna/Client$22;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 2678
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/mrzhna/Client$21;

    invoke-direct {p4, p0}, Lcom/netease/mrzhna/Client$21;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/netease/mrzhna/Client$20;

    invoke-direct {p3, p0}, Lcom/netease/mrzhna/Client$20;-><init>(Lcom/netease/mrzhna/Client;)V

    .line 2685
    invoke-virtual {p2, p5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_3
    const-string p2, "neox_abort"

    .line 2645
    invoke-direct {p0, p2}, Lcom/netease/mrzhna/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/mrzhna/Client$19;

    invoke-direct {p3, p0}, Lcom/netease/mrzhna/Client$19;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 2652
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/mrzhna/Client$18;

    invoke-direct {p4, p0}, Lcom/netease/mrzhna/Client$18;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string p3, "neox_ignore"

    .line 2659
    invoke-direct {p0, p3}, Lcom/netease/mrzhna/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/mrzhna/Client$17;

    invoke-direct {p4, p0}, Lcom/netease/mrzhna/Client$17;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2626
    :cond_4
    new-instance p2, Lcom/netease/mrzhna/Client$16;

    invoke-direct {p2, p0}, Lcom/netease/mrzhna/Client$16;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/netease/mrzhna/Client$15;

    invoke-direct {p3, p0}, Lcom/netease/mrzhna/Client$15;-><init>(Lcom/netease/mrzhna/Client;)V

    .line 2633
    invoke-virtual {p2, p5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2614
    :cond_5
    new-instance p2, Lcom/netease/mrzhna/Client$14;

    invoke-direct {p2, p0}, Lcom/netease/mrzhna/Client$14;-><init>(Lcom/netease/mrzhna/Client;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2747
    :goto_0
    new-instance p2, Lcom/netease/mrzhna/Client$28;

    invoke-direct {p2, p0, p1}, Lcom/netease/mrzhna/Client$28;-><init>(Lcom/netease/mrzhna/Client;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0, p2}, Lcom/netease/mrzhna/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showVirtualKeyboard()V
    .locals 3

    const-string v0, "input_method"

    .line 1142
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    const-string v0, "NeoX"

    const-string v1, "ShowVirtualKeyboard: Input Method Service not found"

    .line 1145
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "NeoXDeviceVKB"

    const-string v2, "Force show Virtual Keyboard"

    .line 1149
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v1, p0, Lcom/netease/mrzhna/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1153
    iget-object v1, p0, Lcom/netease/mrzhna/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v1}, Lcom/netease/neox/NeoXView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    return-void
.end method

.method public showWelcomeView()V
    .locals 2

    .line 1443
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/mrzhna/WelcomeView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startAudioDevice()V
    .locals 1

    .line 2053
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_fmod_audio_device:Lorg/fmod/FMODAudioDevice;

    if-eqz v0, :cond_0

    .line 2055
    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->stop()V

    goto :goto_0

    .line 2059
    :cond_0
    new-instance v0, Lorg/fmod/FMODAudioDevice;

    invoke-direct {v0}, Lorg/fmod/FMODAudioDevice;-><init>()V

    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_fmod_audio_device:Lorg/fmod/FMODAudioDevice;

    .line 2062
    :goto_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_fmod_audio_device:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->start()V

    return-void
.end method

.method startRecording(Ljava/lang/String;)Z
    .locals 0

    .line 2964
    sput-object p0, Lcom/netease/mrzhna/GameVoiceUtils;->context:Landroid/app/Activity;

    .line 2965
    invoke-static {p1}, Lcom/netease/mrzhna/GameVoiceUtils;->prepareRecord(Ljava/lang/String;)Z

    .line 2966
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->startRecord()Z

    const/4 p1, 0x1

    return p1
.end method

.method public startUpdatingLocation()Z
    .locals 1

    .line 2540
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->neoxLocationMgr:Lcom/netease/mrzhna/NeoXLocationManager;

    if-nez v0, :cond_0

    .line 2542
    new-instance v0, Lcom/netease/mrzhna/NeoXLocationManager;

    invoke-direct {v0}, Lcom/netease/mrzhna/NeoXLocationManager;-><init>()V

    iput-object v0, p0, Lcom/netease/mrzhna/Client;->neoxLocationMgr:Lcom/netease/mrzhna/NeoXLocationManager;

    .line 2544
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->neoxLocationMgr:Lcom/netease/mrzhna/NeoXLocationManager;

    invoke-virtual {v0, p0}, Lcom/netease/mrzhna/NeoXLocationManager;->startUpdatingLocation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method startVibrate(J)V
    .locals 5

    .line 1672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVibrate in neox1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeoXDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "vibrator"

    .line 1673
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    const-wide/16 v2, 0x3e8

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "real vibrate"

    .line 1680
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method stopAudioDevice()V
    .locals 1

    .line 2067
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_fmod_audio_device:Lorg/fmod/FMODAudioDevice;

    if-eqz v0, :cond_0

    .line 2069
    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->stop()V

    :cond_0
    return-void
.end method

.method stopPushService()V
    .locals 1

    .line 2108
    invoke-static {}, Lcom/netease/pushclient/PushManager;->stopService()V

    const/4 v0, 0x0

    .line 2109
    iput-boolean v0, p0, Lcom/netease/mrzhna/Client;->m_is_push_manager_init:Z

    return-void
.end method

.method stopRecording()V
    .locals 0

    .line 2972
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->stopRecord()V

    return-void
.end method

.method public stopUpdatingLocation()V
    .locals 1

    .line 2550
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->neoxLocationMgr:Lcom/netease/mrzhna/NeoXLocationManager;

    if-eqz v0, :cond_0

    .line 2552
    invoke-virtual {v0, p0}, Lcom/netease/mrzhna/NeoXLocationManager;->stopUpdatingLocation(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method stopVibrate()V
    .locals 1

    const-string v0, "vibrator"

    .line 1686
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_0

    return-void

    .line 1690
    :cond_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method stopVideo()V
    .locals 1

    .line 2043
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_movie_view:Lcom/netease/mrzhna/MovieView;

    if-eqz v0, :cond_0

    .line 2045
    invoke-virtual {v0}, Lcom/netease/mrzhna/MovieView;->stopVideo()V

    const/4 v0, 0x0

    .line 2046
    iput-object v0, p0, Lcom/netease/mrzhna/Client;->m_movie_view:Lcom/netease/mrzhna/MovieView;

    :cond_0
    return-void
.end method

.method stopVoice()V
    .locals 0

    .line 3000
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->stopPlay()V

    return-void
.end method

.method public updateGameAppInfo(Ljava/lang/String;)V
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/netease/mrzhna/Client;->m_iaware_gamesdk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

    invoke-virtual {v0, p1}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->updateGameAppInfo(Ljava/lang/String;)V

    return-void
.end method
