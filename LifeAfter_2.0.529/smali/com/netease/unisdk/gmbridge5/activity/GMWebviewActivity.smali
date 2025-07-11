.class public Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
.super Landroid/app/Activity;
.source "GMWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;
    }
.end annotation


# static fields
.field public static final GM_HASCUTOUT:Ljava/lang/String; = "GM_HASCUTOUT"

.field public static final GM_WEBVIEW_URL:Ljava/lang/String; = "GM_WEBVIEW_URL"

.field public static final REQUEST_CODE_PICK_FROM_ALBUM:I = 0x143

.field public static final REQUEST_CODE_PICK_FROM_ALBUM_HTML:I = 0x145

.field public static final REQUEST_CODE_PICK_FROM_CAMERA:I = 0x144

.field public static final REQUEST_CODE_PICK_FROM_CAMERA_HTML:I = 0x146

.field private static final REQUEST_PERMISSIONS_REQUEST_CODE:I = 0x147

.field private static final TAG:Ljava/lang/String; = "gm_bridge"

.field private static sInstance:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;


# instance fields
.field private mBatteryInfo:Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;

.field private mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

.field private mCameraImgPath:Ljava/lang/String;

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mCurPageUrl:Ljava/lang/String;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mFullscreenVideoView:Landroid/widget/FrameLayout;

.field private mFullscreenVideoViewShowing:Z

.field private mHascutout:Z

.field private mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

.field private mImgPickDialogOnClick:Z

.field private mOnPause:Z

.field private mPagescrollXMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPagescrollYMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPickImgByHtml:Z

.field private mRefreshRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mRemoteUrl:Ljava/lang/String;

.field private mRightNavigationBar:Landroid/widget/RelativeLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTopNavigationBar:Landroid/widget/RelativeLayout;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollXMap:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollYMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/view/animation/RotateAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRefreshRotateAnimation:Landroid/view/animation/RotateAnimation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->hideNavigationBar()V

    return-void
.end method

.method static synthetic access$102(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/view/animation/RotateAnimation;)Landroid/view/animation/RotateAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Landroid/view/animation/RotateAnimation;

    .line 73
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRefreshRotateAnimation:Landroid/view/animation/RotateAnimation;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoViewShowing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showWebView()V

    return-void
.end method

.method static synthetic access$1302(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .line 73
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->openImageChooser()V

    return-void
.end method

.method static synthetic access$1502(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .line 73
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mImgPickDialogOnClick:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mImgPickDialogOnClick:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->pick()V

    return-void
.end method

.method static synthetic access$1800(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->capture()V

    return-void
.end method

.method static synthetic access$1900(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showPermissionRationaleDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    return v0
.end method

.method static synthetic access$202(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;)Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    .line 73
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 73
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->uploadResultMessage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Lcom/netease/unisdk/gmbridge5/data/I18nInfo;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;)Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;

    .line 73
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryInfo:Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCurPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCurPageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollXMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollYMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->interceptUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 73
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$902(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 73
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method private capture()V
    .locals 3

    .line 796
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 797
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->getImgSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraImgPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gm_bridge"

    invoke-static {v2, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 801
    .local v1, "imgUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 802
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 803
    iget-boolean v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x146

    goto :goto_0

    :cond_0
    const/16 v2, 0x144

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 805
    :cond_1
    return-void
.end method

.method private getFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .line 819
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    const/4 v0, 0x0

    return-object v0

    .line 822
    :cond_0
    const/4 v0, 0x0

    .line 823
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 824
    .local v1, "file":Ljava/io/File;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const-string v4, "fromFile Exception : "

    const-string v5, "gm_bridge"

    if-ge v2, v3, :cond_1

    .line 826
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 829
    goto :goto_0

    .line 827
    :catch_0
    move-exception v2

    .line 828
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 832
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".gmbridge.fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 833
    .local v2, "authority":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "authority = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :try_start_1
    invoke-static {p0, v2, v1}, Lcom/netease/unisdk/gmbridge5/provider/GmFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .line 838
    goto :goto_1

    .line 836
    :catch_1
    move-exception v3

    .line 837
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUriForFile Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    if-nez v0, :cond_2

    .line 841
    :try_start_2
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v3

    .line 844
    goto :goto_2

    .line 842
    :catch_2
    move-exception v3

    .line 843
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static getInstance()Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .locals 1

    .line 195
    sget-object v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->sInstance:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    return-object v0
.end method

.method private getScreenOrientation()I
    .locals 3

    .line 187
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 188
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    iget v0, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 189
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 191
    return v0
.end method

.method private hasCamera()Z
    .locals 5

    .line 687
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 688
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 690
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 691
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private hideNavigationBar()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    return-void
.end method

.method private initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "closeIv"    # Landroid/widget/ImageView;
    .param p2, "backIv"    # Landroid/widget/ImageView;
    .param p3, "forwardIv"    # Landroid/widget/ImageView;
    .param p4, "refreshIv"    # Landroid/widget/ImageView;

    .line 213
    if-eqz p1, :cond_0

    .line 214
    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    :cond_0
    if-eqz p2, :cond_1

    .line 228
    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$3;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$3;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_1
    if-eqz p3, :cond_2

    .line 239
    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$4;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$4;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_2
    if-eqz p4, :cond_3

    .line 251
    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;

    invoke-direct {v0, p0, p4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_3
    return-void
.end method

.method private initNavigationView()V
    .locals 8

    .line 199
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$id;->t_close:I

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 200
    .local v0, "tcloseIv":Landroid/widget/ImageView;
    sget v1, Lcom/netease/unisdk/gmbridgelib/R$id;->t_back:I

    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 201
    .local v1, "tbackIv":Landroid/widget/ImageView;
    sget v2, Lcom/netease/unisdk/gmbridgelib/R$id;->t_forward:I

    invoke-virtual {p0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 202
    .local v2, "tforwardIv":Landroid/widget/ImageView;
    sget v3, Lcom/netease/unisdk/gmbridgelib/R$id;->t_refresh:I

    invoke-virtual {p0, v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 203
    .local v3, "trefreshIv":Landroid/widget/ImageView;
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 205
    sget v4, Lcom/netease/unisdk/gmbridgelib/R$id;->r_close:I

    invoke-virtual {p0, v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 206
    .local v4, "rcloseIv":Landroid/widget/ImageView;
    sget v5, Lcom/netease/unisdk/gmbridgelib/R$id;->r_back:I

    invoke-virtual {p0, v5}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 207
    .local v5, "rbackIv":Landroid/widget/ImageView;
    sget v6, Lcom/netease/unisdk/gmbridgelib/R$id;->r_forward:I

    invoke-virtual {p0, v6}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 208
    .local v6, "rforwardIv":Landroid/widget/ImageView;
    sget v7, Lcom/netease/unisdk/gmbridgelib/R$id;->r_refresh:I

    invoke-virtual {p0, v7}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 209
    .local v7, "rrefreshIv":Landroid/widget/ImageView;
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 210
    return-void
.end method

.method private initWebView()V
    .locals 5

    .line 330
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$id;->web:I

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    .line 331
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mHascutout:Z

    if-eqz v0, :cond_2

    .line 332
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$id;->content_view:I

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 333
    .local v0, "contentRl":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 334
    .local v1, "contentLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/16 v3, 0x5a

    if-eqz v2, :cond_1

    sget v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    sget v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 341
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 337
    :cond_1
    :goto_0
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 338
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 345
    .end local v0    # "contentRl":Landroid/widget/RelativeLayout;
    .end local v1    # "contentLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$7;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$7;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 367
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 368
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 369
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 370
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 371
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 372
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 373
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 374
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-lt v2, v3, :cond_3

    .line 375
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 378
    :cond_3
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 379
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 380
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 384
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 385
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 386
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 387
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 391
    :cond_4
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 462
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 530
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "GM_WEBVIEW_URL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method private interceptUrl(Ljava/lang/String;)Z
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .line 554
    const-string v0, "json : "

    const-string v1, "gm"

    const-string v2, "methodId"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 555
    return v4

    .line 557
    :cond_0
    const-string v3, "csa/upload/image"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 559
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRemoteUrl:Ljava/lang/String;

    .line 560
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showImgPickDialog()V

    .line 561
    return v5

    .line 562
    :cond_1
    const-string v3, "csa/info"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v6, "gm_bridge"

    if-eqz v3, :cond_3

    .line 563
    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "callbackFunc":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/device/DeviceUtil;->getDeviceInfo(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;

    move-result-object v1

    .line 566
    .local v1, "deviceInfo":Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryInfo:Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;

    if-eqz v2, :cond_2

    .line 567
    iget-object v2, v2, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;->batteryLevel:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->batteryLevel:Ljava/lang/String;

    .line 568
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryInfo:Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;

    iget-object v2, v2, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;->batteryStatus:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->batteryStatus:Ljava/lang/String;

    .line 570
    :cond_2
    invoke-virtual {v1}, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "jsonStr":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return v5

    .line 573
    .end local v0    # "callbackFunc":Ljava/lang/String;
    .end local v1    # "deviceInfo":Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;
    .end local v2    # "jsonStr":Ljava/lang/String;
    :cond_3
    const-string v3, "csa/start_record"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 576
    return v5

    .line 577
    :cond_4
    const-string v3, "csa/stop_record"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 579
    return v5

    .line 580
    :cond_5
    const-string v3, "csa/cancel_record"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 582
    return v5

    .line 583
    :cond_6
    const-string v3, "csa/play_record"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 589
    return v5

    .line 590
    :cond_7
    const-string v3, "csa/stop_play"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 592
    return v5

    .line 593
    :cond_8
    const-string v3, "csa/set_window_size"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 594
    const/high16 v0, 0x3f800000    # 1.0f

    .line 595
    .local v0, "wp":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 597
    .local v1, "hp":F
    :try_start_0
    const-string v2, "w"

    invoke-static {p1, v2}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 599
    goto :goto_0

    .line 598
    :catch_0
    move-exception v2

    .line 602
    :goto_0
    :try_start_1
    const-string v2, "h"

    invoke-static {p1, v2}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 604
    goto :goto_1

    .line 603
    :catch_1
    move-exception v2

    .line 606
    :goto_1
    const-string v2, "align"

    invoke-static {p1, v2}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, "align":Ljava/lang/String;
    iget v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    invoke-direct {p0, v3, v4, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->updateViewSizeAndPosition(IILjava/lang/String;)V

    .line 608
    return v5

    .line 609
    .end local v0    # "wp":F
    .end local v1    # "hp":F
    .end local v2    # "align":Ljava/lang/String;
    :cond_9
    const-string v3, "csa/play_video"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v7, "android.intent.action.VIEW"

    if-eqz v3, :cond_a

    .line 610
    const-string v0, "link"

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "link":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 613
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "video/mp4"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    invoke-virtual {p0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 616
    return v5

    .line 617
    .end local v0    # "link":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_a
    const-string v3, "//extend"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 618
    const-string v4, "extend func"

    invoke-static {v6, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    const-string v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "func":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "func : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 622
    .local v4, "uri":Landroid/net/Uri;
    const-string v7, "params"

    invoke-virtual {v4, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 623
    .local v7, "params":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "params : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 626
    .local v8, "jsonObject":Lorg/json/JSONObject;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 628
    .local v9, "json":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v10

    check-cast v10, Lcom/netease/ntunisdk/base/SdkBase;

    .line 630
    .local v10, "sdkBase":Lcom/netease/ntunisdk/base/SdkBase;
    if-eqz v10, :cond_b

    .line 631
    invoke-virtual {v10, v9}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 656
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "json":Ljava/lang/String;
    .end local v10    # "sdkBase":Lcom/netease/ntunisdk/base/SdkBase;
    :cond_b
    goto/16 :goto_3

    .line 633
    :catch_2
    move-exception v8

    .line 636
    .local v8, "jsonException":Lorg/json/JSONException;
    :try_start_3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 637
    .local v9, "jsonObject":Lorg/json/JSONObject;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 639
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 640
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 641
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 642
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v4, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 643
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    nop

    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_2

    .line 647
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, "json":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    .line 650
    .local v0, "sdkBase":Lcom/netease/ntunisdk/base/SdkBase;
    if-eqz v0, :cond_d

    .line 651
    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 655
    .end local v0    # "sdkBase":Lcom/netease/ntunisdk/base/SdkBase;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "json":Ljava/lang/String;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_d
    goto :goto_3

    .line 653
    :catch_3
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extend func Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "jsonException":Lorg/json/JSONException;
    :goto_3
    return v5

    .line 658
    .end local v3    # "func":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v7    # "params":Ljava/lang/String;
    :cond_e
    const-string v0, "csa/market"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 659
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "u":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 663
    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 664
    return v5

    .line 665
    .end local v0    # "u":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_f
    const-string v0, "csa/set_screen_orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 667
    instance-of v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx;

    if-nez v0, :cond_12

    .line 668
    const-string v0, "orientation"

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "orientation":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_11

    .line 670
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-eq v5, v1, :cond_10

    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-ne v2, v1, :cond_12

    .line 671
    :cond_10
    invoke-virtual {p0, v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    .line 672
    sput v4, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    goto :goto_4

    .line 674
    :cond_11
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 675
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-eq v5, v1, :cond_12

    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-eq v2, v1, :cond_12

    .line 676
    invoke-virtual {p0, v5}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    .line 677
    sput v5, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    .line 681
    .end local v0    # "orientation":Ljava/lang/String;
    :cond_12
    :goto_4
    return v5

    .line 683
    :cond_13
    return v4
.end method

.method private openImageChooser()V
    .locals 1

    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    .line 815
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showImgPickDialog()V

    .line 816
    return-void
.end method

.method private pick()V
    .locals 2

    .line 808
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    iget-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x145

    goto :goto_0

    :cond_0
    const/16 v1, 0x143

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 811
    return-void
.end method

.method private registerBatteryReceiver()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    .line 313
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$6;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$6;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-direct {v0, v1}, Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;-><init>(Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    return-void
.end method

.method private setScreenOrientation()V
    .locals 2

    .line 178
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 179
    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 180
    :cond_0
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v1, 0x7

    if-ne v1, v0, :cond_1

    .line 181
    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    .line 183
    :cond_1
    :goto_0
    return-void
.end method

.method private showImgPickDialog()V
    .locals 6

    .line 695
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 696
    .local v0, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/unisdk/gmbridgelib/R$array;->uni_gm_img_pick_dlg_items:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "itemses":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->hasCamera()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 699
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 700
    .local v2, "items":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v5, :cond_0

    .line 701
    iget-object v5, v5, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mASButtonTitleLibrary:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 702
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    iget-object v4, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mASButtonTitleCamera:Ljava/lang/String;

    aput-object v4, v2, v3

    goto :goto_0

    .line 704
    :cond_0
    aget-object v5, v1, v4

    aput-object v5, v2, v4

    .line 705
    aget-object v4, v1, v3

    aput-object v4, v2, v3

    goto :goto_0

    .line 708
    .end local v2    # "items":[Ljava/lang/CharSequence;
    :cond_1
    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 709
    .restart local v2    # "items":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v5, :cond_2

    .line 710
    iget-object v5, v5, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mASButtonTitleLibrary:Ljava/lang/String;

    aput-object v5, v2, v4

    goto :goto_0

    .line 712
    :cond_2
    aget-object v5, v1, v4

    aput-object v5, v2, v4

    .line 717
    :goto_0
    new-instance v4, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;

    invoke-direct {v4, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 745
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_3

    .line 746
    new-instance v4, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$12;

    invoke-direct {v4, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$12;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 755
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 756
    .local v4, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 757
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 758
    return-void
.end method

.method private showPermissionRationaleDialog()V
    .locals 6

    .line 761
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 762
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/unisdk/gmbridgelib/R$string;->need_camera_permission:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/unisdk/gmbridgelib/R$string;->camera_permission_sure:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "sure":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/unisdk/gmbridgelib/R$string;->camera_permission_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "cancel":Ljava/lang/String;
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v4, :cond_0

    .line 766
    iget-object v1, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mNeedCameraPermission:Ljava/lang/String;

    .line 767
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    iget-object v2, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertOk:Ljava/lang/String;

    .line 768
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    iget-object v3, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertCancel:Ljava/lang/String;

    .line 771
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$14;

    invoke-direct {v5, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$14;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    .line 772
    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;

    invoke-direct {v5, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    .line 777
    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 792
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 793
    return-void
.end method

.method private showRightNavigationBar()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    return-void
.end method

.method private showTopNavigationBar()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 293
    return-void
.end method

.method private showWebView()V
    .locals 3

    .line 535
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 536
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 540
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 542
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 543
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    .line 544
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    .line 545
    iget v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    if-le v1, v2, :cond_1

    .line 546
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showRightNavigationBar()V

    goto :goto_0

    .line 548
    :cond_1
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showTopNavigationBar()V

    .line 550
    :goto_0
    return-void
.end method

.method private startUpload(Ljava/lang/Object;)V
    .locals 3
    .param p1, "imgUri"    # Ljava/lang/Object;

    .line 926
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRemoteUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRemoteUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->obtain(Ljava/lang/String;)Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;

    move-result-object v0

    .line 930
    .local v0, "upInfo":Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gm_bridge"

    invoke-static {v2, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v1, v0, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->callback:Ljava/lang/String;

    const-string v2, "uploading"

    invoke-virtual {p0, v2, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$16;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$16;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-static {p0, v0, p1, v1}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->uploadImg(Landroid/content/Context;Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;)V

    .line 944
    return-void
.end method

.method private updateViewSizeAndPosition(IILjava/lang/String;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "align"    # Ljava/lang/String;

    .line 851
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 852
    .local v0, "contentViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    .line 853
    .local v1, "tbMargin":I
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 854
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 855
    const-string v2, "left"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 856
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 857
    iget v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 858
    :cond_0
    const-string v2, "right"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 859
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 860
    iget v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 862
    :cond_1
    iget v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    .line 863
    .local v2, "lrMargin":I
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 864
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 866
    .end local v2    # "lrMargin":I
    :goto_0
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    return-void
.end method

.method private uploadResultMessage(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 950
    const-string v0, "gm_bridge"

    const-string v1, "uploadResultMessage >> "

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const/4 v1, 0x0

    .line 953
    .local v1, "okPath":Ljava/lang/String;
    const/high16 v2, 0x200000

    if-eqz p1, :cond_0

    .line 954
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 955
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 956
    invoke-static {p0, v3, v2}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 958
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 959
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 958
    :cond_1
    :goto_0
    nop

    .line 962
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okPath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const/4 v0, 0x0

    .line 965
    .local v0, "okUri":Landroid/net/Uri;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 966
    invoke-direct {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 969
    :cond_2
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 970
    if-eqz v0, :cond_3

    .line 971
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Uri;

    aput-object v0, v5, v3

    invoke-interface {v2, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 973
    :cond_3
    invoke-interface {v2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 975
    :goto_2
    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    goto :goto_3

    .line 977
    :cond_4
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 978
    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 980
    :goto_3
    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    .line 981
    iput-boolean v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    .line 982
    iput-boolean v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mImgPickDialogOnClick:Z

    .line 983
    return-void
.end method


# virtual methods
.method public jsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 870
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    .line 871
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string v3, "javascript:%s(\'%s\')"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "url":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v1, "gm_bridge"

    const-string v3, "call js  :  %s"

    invoke-static {v1, v3, v2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 874
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$15;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$15;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 881
    :cond_1
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 883
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 911
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "gm_bridge"

    const-string v2, "ntOnActivityResult requestCode = %d,resultCode = %d"

    invoke-static {v1, v2, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    const/16 v0, 0x143

    if-ne v0, p1, :cond_0

    .line 913
    if-eqz p3, :cond_3

    .line 914
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startUpload(Ljava/lang/Object;)V

    goto :goto_0

    .line 916
    :cond_0
    const/16 v0, 0x144

    if-ne v0, p1, :cond_1

    .line 917
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startUpload(Ljava/lang/Object;)V

    goto :goto_0

    .line 918
    :cond_1
    const/16 v0, 0x145

    if-ne v0, p1, :cond_2

    .line 919
    invoke-direct {p0, p3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->uploadResultMessage(Landroid/content/Intent;)V

    goto :goto_0

    .line 920
    :cond_2
    const/16 v0, 0x146

    if-ne v0, p1, :cond_3

    .line 921
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->uploadResultMessage(Landroid/content/Intent;)V

    .line 923
    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1002
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoViewShowing:Z

    if-nez v0, :cond_1

    .line 1006
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const-string v2, "gmbridge_screen_changed"

    if-ne v0, v1, :cond_0

    .line 1007
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showTopNavigationBar()V

    .line 1008
    const-string v0, "2"

    invoke-virtual {p0, v0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1010
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showRightNavigationBar()V

    .line 1011
    const-string v0, "1"

    invoke-virtual {p0, v0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    sput-object p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->sInstance:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 125
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GM_HASCUTOUT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mHascutout:Z

    .line 127
    instance-of v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx;

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setScreenOrientation()V

    .line 130
    :cond_0
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->getI18nInfo()Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    .line 131
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 132
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    .line 133
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    .line 135
    sget v1, Lcom/netease/unisdk/gmbridgelib/R$layout;->uni_gm_web_act:I

    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setContentView(I)V

    .line 136
    sget v1, Lcom/netease/unisdk/gmbridgelib/R$id;->top_navigation_bar:I

    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    .line 137
    sget v1, Lcom/netease/unisdk/gmbridgelib/R$id;->right_navigation_bar:I

    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    .line 138
    sget v1, Lcom/netease/unisdk/gmbridgelib/R$id;->content_view:I

    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mContentView:Landroid/widget/RelativeLayout;

    .line 139
    sget v1, Lcom/netease/unisdk/gmbridgelib/R$id;->full_video:I

    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoView:Landroid/widget/FrameLayout;

    .line 140
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initNavigationView()V

    .line 142
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v2, 0x1

    if-eq v2, v1, :cond_6

    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v3, 0x7

    if-ne v3, v1, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getScreenOrientation()I

    move-result v1

    sput v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "orientation : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "gm_bridge"

    invoke-static {v4, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-ne v3, v1, :cond_2

    goto :goto_0

    .line 149
    :cond_2
    const/4 v1, -0x1

    sget v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-ne v1, v2, :cond_4

    .line 150
    iget v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    if-le v1, v2, :cond_3

    .line 151
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showRightNavigationBar()V

    goto :goto_2

    .line 153
    :cond_3
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showTopNavigationBar()V

    goto :goto_2

    .line 156
    :cond_4
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showRightNavigationBar()V

    goto :goto_2

    .line 148
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showTopNavigationBar()V

    goto :goto_2

    .line 143
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showTopNavigationBar()V

    .line 159
    :goto_2
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initWebView()V

    .line 160
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->registerBatteryReceiver()V

    .line 161
    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$1;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$1;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-static {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;)V

    .line 175
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 987
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 989
    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    .line 991
    :cond_0
    sget-object v0, Lcom/netease/unisdk/gmbridge5/GmBridge;->sWebCloseListener:Lcom/netease/unisdk/gmbridge5/IWebCloseListener;

    if-eqz v0, :cond_1

    .line 992
    sget-object v0, Lcom/netease/unisdk/gmbridge5/GmBridge;->sWebCloseListener:Lcom/netease/unisdk/gmbridge5/IWebCloseListener;

    invoke-interface {v0}, Lcom/netease/unisdk/gmbridge5/IWebCloseListener;->onWebClose()V

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollXMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 995
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollYMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 996
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 997
    sput-object v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->sInstance:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 998
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1018
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1019
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1021
    const-string v0, "gm_bridge"

    const-string v1, "mWebView.onPause()"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v0, ""

    const-string v1, "gmbridge_enterbackground"

    invoke-virtual {p0, v0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mOnPause:Z

    .line 1025
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 887
    const/16 v0, 0x147

    if-ne p1, v0, :cond_2

    .line 888
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    aget v1, p3, v0

    if-nez v1, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->capture()V

    goto :goto_1

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v1, :cond_1

    .line 894
    iget-object v1, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mPermissionNotAvailable:Ljava/lang/String;

    .local v1, "toastText":Ljava/lang/String;
    goto :goto_0

    .line 896
    .end local v1    # "toastText":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/unisdk/gmbridgelib/R$string;->permission_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 898
    .restart local v1    # "toastText":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 899
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    if-eqz v0, :cond_2

    .line 900
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->uploadResultMessage(Landroid/content/Intent;)V

    .line 907
    .end local v1    # "toastText":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1029
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1030
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mOnPause:Z

    if-eqz v1, :cond_0

    .line 1031
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1032
    const-string v0, "gm_bridge"

    const-string v1, "mWebView.onResume()"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v0, ""

    const-string v1, "gmbridge_onresume"

    invoke-virtual {p0, v0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mOnPause:Z

    .line 1036
    :cond_0
    return-void
.end method
