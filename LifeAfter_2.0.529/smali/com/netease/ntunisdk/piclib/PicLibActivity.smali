.class public Lcom/netease/ntunisdk/piclib/PicLibActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "PicLibActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/piclib/utils/UniExtendFuncHandler$IExtendFuncListener;


# static fields
.field public static final REQUEST_CAMERA:I

.field public static final REQUEST_CAMERA_STORAGE:I

.field public static final REQUEST_STORAGE:I

.field public static final RES_CODE:I

.field private static final TAG:Ljava/lang/String; = "PicLibActivity"

.field private static volatile checkCameraHardwareCache:Ljava/lang/Boolean;

.field private static volatile checkCustomCameraCache:Ljava/lang/Boolean;

.field private static language:Ljava/lang/String;


# instance fields
.field private final REQ_CODE:I

.field private final REQ_TO_CUSTOM_CAMERA_CODE:I

.field private chooseDialog:Lcom/netease/ntunisdk/piclib/view/ChooseDialog;

.field private enableRTL:Z

.field private fragmentControl:Lcom/netease/ntunisdk/piclib/utils/FragmentControl;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private fromCameraPath:Ljava/lang/String;

.field private hasStopped:Z

.field private loadingCover:Lcom/netease/ntunisdk/piclib/view/LoadingCover;

.field private mContext:Landroid/app/Activity;

.field private onScaleCallbackListener:Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;

.field private picLibContainerId:I

.field private final scaleImageLoadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;",
            ">;"
        }
    .end annotation
.end field

.field private scaleImageLoadTasksTag:J

.field private final theLayout:Ljava/lang/String;

.field private uriFromCamera:Landroid/net/Uri;

.field private viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7a17ab76

    .line 80
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->RES_CODE:I

    const v0, 0x5544da51

    .line 81
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQUEST_STORAGE:I

    const v0, -0x11582771    # -2.59729E28f

    .line 82
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQUEST_CAMERA:I

    const v0, 0x3c9c2cb

    .line 83
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQUEST_CAMERA_STORAGE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const-string v0, "activity_us_pic_lib"

    .line 77
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->theLayout:Ljava/lang/String;

    const v0, 0x2c1cecea

    .line 78
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQ_CODE:I

    const v0, 0x75528309

    .line 79
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQ_TO_CUSTOM_CAMERA_CODE:I

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasks:Ljava/util/List;

    return-void
.end method

.method private cancelImageCompressionTask()Z
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 782
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->onScaleCallbackListener:Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;

    const-wide/16 v0, 0x0

    .line 783
    iput-wide v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasksTag:J

    .line 784
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->loadingCover:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 785
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->processing:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 786
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;

    .line 787
    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->cancel()V

    goto :goto_0

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private cancelLoadMediaFromOtherTask()Z
    .locals 1

    .line 773
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->loadMediaFromOtherTask:Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;

    if-eqz v0, :cond_0

    .line 774
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->loadMediaFromOtherTask:Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->cancel()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkCameraAgain()Z
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->supportCamera:Z

    if-nez v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->methodType:Ljava/lang/String;

    const-string v1, "openCamera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->mContext:Landroid/app/Activity;

    const-string v2, "picedit_not_support_camera"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 702
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->finish()V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private doCheckCustomCamera()Z
    .locals 5

    .line 661
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    .line 664
    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/camera/CheckCameraAbility;->getCameraIdList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 665
    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_1

    .line 668
    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 669
    invoke-static {p0, v4}, Lcom/netease/ntunisdk/piclib/camera/CheckCameraAbility;->checkPictureVideoCombinationAbility(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private doRequestPermission(I[Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "finish"
        }
    .end annotation

    const-string v0, "picedit_got_it"

    .line 395
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "picedit_cancel"

    .line 396
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    sget v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQUEST_STORAGE:I

    if-ne p1, v0, :cond_0

    const-string v0, "picedit_need_permission_of_read_media"

    .line 399
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "UNISDK_PIC_EDIT_RW_PERMISSION_TIPS"

    invoke-interface {v1, v2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "picedit_reject_permission_of_storage_tip"

    .line 402
    invoke-static {p0, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UNISDK_PIC_EDIT_REJECT_RW_PERMISSION_TIPS"

    .line 401
    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "picedit_need_permission_of_camera"

    .line 404
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "UNISDK_PIC_EDIT_C_PERMISSION_TIPS"

    invoke-interface {v1, v2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "picedit_reject_permission_of_camera_tip"

    .line 407
    invoke-static {p0, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UNISDK_PIC_EDIT_REJECT_C_PERMISSION_TIPS"

    .line 406
    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v6, v0

    move-object v7, v1

    const/4 v0, 0x2

    :try_start_0
    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "finish"

    aput-object v1, v8, v0

    const/4 v0, 0x1

    .line 411
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v8, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    .line 410
    invoke-static/range {v1 .. v8}, Lcom/netease/ntunisdk/piclib/utils/PermissionRequest;->requestPermission(Landroid/app/Activity;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 413
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "doRequestPermission -> e: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PicLibActivity"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->language:Ljava/lang/String;

    return-object v0
.end method

.method private handleEditState()Z
    .locals 3

    .line 761
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->editState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 764
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->editState:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return v1
.end method

.method private handlePermission(IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "finish"
        }
    .end annotation

    const-string v0, "PicLibActivity"

    const-string v1, "handlePermission"

    .line 351
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQUEST_STORAGE:I

    if-ne p1, v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-static {p0, v1}, Lcom/netease/ntunisdk/piclib/utils/PermissionManager;->getMediaPermissions(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 356
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/piclib/utils/PermissionManager;->getCameraPermission()[Ljava/lang/String;

    move-result-object v1

    .line 358
    :goto_0
    invoke-static {p0, v1}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "checkPermission result: true"

    .line 359
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 362
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->doRequestPermission(I[Ljava/lang/String;Z)V

    const-string p1, "checkPermission result: false"

    .line 364
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private hideBucket()Z
    .locals 3

    .line 829
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initLiveData()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    .line 433
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->notifyShowingDataUpdate:Landroidx/lifecycle/MutableLiveData;

    .line 434
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    .line 435
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    .line 436
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->processing:Landroidx/lifecycle/MutableLiveData;

    .line 437
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->loadingCover:Landroidx/lifecycle/MutableLiveData;

    .line 438
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->configuration:Landroidx/lifecycle/MutableLiveData;

    .line 439
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->editState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private processCompleted([Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 918
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p1, v2

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 921
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 922
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->loadingCover:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private processMedia()V
    .locals 20

    move-object/from16 v10, p0

    .line 839
    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->loadingCover:Landroidx/lifecycle/MutableLiveData;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 840
    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v12, v0, [Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 841
    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v13, v0, [Z

    const/4 v14, 0x0

    .line 842
    invoke-static {v13, v14}, Ljava/util/Arrays;->fill([ZZ)V

    .line 844
    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->quality:I

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getShowSize(Landroid/content/Context;I)[I

    move-result-object v15

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v15, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v15, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "PicLibActivity"

    invoke-static {v9, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    new-instance v0, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$dz0BusqNy4yIbdepKf2HnzMHiak;

    invoke-direct {v0, v10, v12, v13}, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$dz0BusqNy4yIbdepKf2HnzMHiak;-><init>(Lcom/netease/ntunisdk/piclib/PicLibActivity;[Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;[Z)V

    iput-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->onScaleCallbackListener:Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasksTag:J

    .line 866
    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 867
    iget v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    sub-int/2addr v1, v11

    .line 869
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_1

    .line 871
    :cond_0
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 872
    iget v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    iput v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 874
    :goto_1
    iget-object v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v3, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v4, "_"

    const-string v5, "."

    if-ne v0, v3, :cond_1

    .line 876
    iget-object v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getPreSufFix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_cover.jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 878
    new-instance v8, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;

    iget-object v4, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->onScaleCallbackListener:Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;

    iget-wide v6, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasksTag:J

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v3, v15

    invoke-direct/range {v0 .. v7}, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;[ILcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;Ljava/lang/String;J)V

    .line 879
    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->execute(Lcom/netease/ntunisdk/piclib/thread/Task;)V

    .line 880
    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasks:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v11, v9

    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 881
    :cond_1
    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->quality:I

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v3, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne v0, v3, :cond_4

    iget v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    if-eqz v0, :cond_2

    iget v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    if-eqz v0, :cond_2

    iget v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    aget v3, v15, v14

    if-gt v0, v3, :cond_2

    iget v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    aget v3, v15, v11

    if-gt v0, v3, :cond_2

    iget v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    aget v3, v15, v11

    if-gt v0, v3, :cond_2

    iget v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    aget v3, v15, v14

    if-le v0, v3, :cond_4

    .line 886
    :cond_2
    iget-object v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getPreSufFix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v14

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_uni_sdk_thumb_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 888
    iget-object v3, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->imageFormat:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 891
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->imageFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v5, v0

    .line 893
    new-instance v8, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;

    iget-object v3, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->onScaleCallbackListener:Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;

    iget-wide v6, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasksTag:J

    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget v4, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->quality:I

    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->imageFormat:Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move/from16 v18, v4

    move-object v4, v15

    move-object/from16 v19, v8

    move/from16 v8, v18

    move-object v11, v9

    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;[ILjava/lang/String;JILjava/lang/String;)V

    .line 895
    invoke-static/range {v19 .. v19}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->execute(Lcom/netease/ntunisdk/piclib/thread/Task;)V

    .line 896
    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasks:Ljava/util/List;

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    move-object v11, v9

    .line 897
    iget-object v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v3, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne v0, v3, :cond_5

    .line 899
    iget-object v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getPreSufFix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 901
    new-instance v9, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;

    iget-object v3, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->onScaleCallbackListener:Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;

    iget-wide v5, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasksTag:J

    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v7, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->imageFormat:Ljava/lang/String;

    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v8, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->disableTransformJpeg:Z

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;Ljava/lang/String;JLjava/lang/String;Z)V

    .line 903
    invoke-static {v9}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->execute(Lcom/netease/ntunisdk/piclib/thread/Task;)V

    .line 904
    iget-object v0, v10, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasks:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 907
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no process width: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    aput-object v2, v12, v1

    const/4 v0, 0x1

    .line 909
    aput-boolean v0, v13, v1

    :goto_4
    move-object v9, v11

    const/4 v11, 0x1

    goto/16 :goto_0

    .line 912
    :cond_6
    invoke-direct {v10, v13}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->processCompleted([Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 913
    invoke-direct {v10, v12}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->sendMedia([Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    :cond_7
    return-void
.end method

.method private quitFragment()Z
    .locals 6

    const/4 v0, 0x1

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->fragmentControl:Lcom/netease/ntunisdk/piclib/utils/FragmentControl;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->getSize()I

    move-result v1

    if-lt v1, v0, :cond_4

    .line 799
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->fragmentControl:Lcom/netease/ntunisdk/piclib/utils/FragmentControl;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->removeFragment()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 801
    const-class v4, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->resetTargetEntityState()V

    .line 804
    :cond_0
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v4, v4, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->removeState(Ljava/lang/String;)V

    .line 805
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v4, v4, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->refreshState(Ljava/lang/String;)V

    const-string v4, "openCamera"

    .line 806
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v5, v5, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v5, v5, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->methodType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v1, v0, :cond_2

    .line 807
    const-class v4, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 809
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->needToDeleteCameraMediaFiles:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 810
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 811
    iget-object v4, v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 813
    :cond_1
    new-instance v2, Lcom/netease/ntunisdk/piclib/loader/DeleteAbandonedMediaTask;

    invoke-direct {v2, v1}, Lcom/netease/ntunisdk/piclib/loader/DeleteAbandonedMediaTask;-><init>(Ljava/util/List;)V

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->execute(Lcom/netease/ntunisdk/piclib/thread/Task;)V

    .line 814
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 815
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->toCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    if-ne v1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quitFragment -> e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PicLibActivity"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method private recordArab()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    .line 159
    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "ar"

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 162
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 165
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 166
    invoke-virtual {v3, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 171
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    goto :goto_1

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    sget-object v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->language:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    .line 175
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->enableRTL:Z

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    :cond_4
    return-void
.end method

.method private resetTargetEntityState()V
    .locals 5

    const-string v0, "PicLibActivity"

    .line 946
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetEditEntity is null? -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 950
    iput v3, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 951
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTargetEntityState -> e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private sendError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 937
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "code"

    const/16 v2, -0x3e7

    .line 938
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "error"

    .line 939
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    sget p1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->RES_CODE:I

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->setResult(ILandroid/content/Intent;)V

    .line 941
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->finish()V

    return-void
.end method

.method private sendMedia([Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entities"
        }
    .end annotation

    .line 927
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 928
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 929
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string p1, "result"

    .line 930
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "code"

    const/4 v1, 0x1

    .line 931
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    sget p1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->RES_CODE:I

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->setResult(ILandroid/content/Intent;)V

    .line 933
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->finish()V

    return-void
.end method

.method public static setLanguage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    .line 117
    sput-object p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->language:Ljava/lang/String;

    return-void
.end method

.method private switchLanguage(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "PicLibActivity"

    .line 129
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "ENABLE_RTL"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 130
    iput-boolean v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->enableRTL:Z

    .line 132
    :cond_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->language:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->checkLanguage(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 135
    :try_start_1
    sget-object v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->language:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->createLocal(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 137
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 138
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 139
    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    .line 141
    sget-object v2, Lcom/netease/ntunisdk/piclib/PicLibActivity;->language:Ljava/lang/String;

    sput-object v2, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->language:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 144
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchLanguage -> e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return-object p1

    :catch_1
    move-exception v1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchLanguage -> ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private toCamera()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->useCustomCamera:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCustomCameraCache:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCustomCameraCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->toCustomCamera()V

    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-nez v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->chooseDialog:Lcom/netease/ntunisdk/piclib/view/ChooseDialog;

    if-nez v0, :cond_1

    .line 716
    new-instance v0, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;

    const/4 v1, 0x1

    new-instance v2, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$RxUQtBUZpNUKpOiYC6tbCX1d8MU;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$RxUQtBUZpNUKpOiYC6tbCX1d8MU;-><init>(Lcom/netease/ntunisdk/piclib/PicLibActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;-><init>(Landroid/content/Context;ZLcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->chooseDialog:Lcom/netease/ntunisdk/piclib/view/ChooseDialog;

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->chooseDialog:Lcom/netease/ntunisdk/piclib/view/ChooseDialog;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->show()V

    goto :goto_0

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->takeMedia(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)V

    :goto_0
    return-void
.end method

.method private toCustomCamera()V
    .locals 4

    .line 731
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v2, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v3, "media_type"

    if-ne v1, v2, :cond_0

    .line 733
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v2, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne v1, v2, :cond_1

    .line 735
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->IMAGE:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->quality:I

    const-string v2, "quality"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 738
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectSize:I

    const-string v2, "video_size_limit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 739
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectDuration:I

    const-string v2, "video_time_limit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    iget v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQ_TO_CUSTOM_CAMERA_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private toEditDirectly()V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->isEditImage:Z

    .line 317
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;-><init>()V

    .line 318
    iput-boolean v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->isDirectlyEdited:Z

    .line 319
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->toEditImageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    .line 320
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->toEditImagePath:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    .line 321
    sget-object v2, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v2, "image"

    .line 322
    iput-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    .line 323
    iput v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 324
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->onlyClip:Z

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-boolean v1, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-object v0, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 329
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "com.netease.ntunisdk.piclib.fragment.EditMediaFragment"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->clearStringCache()V

    .line 113
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->switchLanguage(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected checkCameraHardware()Z
    .locals 2

    const-string v0, "PicLibActivity"

    const-string v1, "checkCameraHardware"

    .line 635
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-static {p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 640
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCameraHardwareCache:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->doCheckCameraHardware()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCameraHardwareCache:Ljava/lang/Boolean;

    .line 643
    :cond_1
    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCameraHardwareCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->useCustomCamera:Z

    if-eqz v0, :cond_4

    .line 648
    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCustomCameraCache:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCustomCameraCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 649
    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCustomCameraCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 650
    :cond_3
    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCustomCameraCache:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 651
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->doCheckCustomCamera()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCustomCameraCache:Ljava/lang/Boolean;

    .line 652
    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCustomCameraCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 653
    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCustomCameraCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 657
    :cond_4
    sget-object v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCameraHardwareCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected doCheckCameraHardware()Z
    .locals 4

    const-string v0, "PicLibActivity"

    const-string v1, "doCheckCameraHardware"

    .line 677
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.camera.any"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 680
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 681
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 683
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    .line 686
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 688
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string v1, "has no camera"

    .line 691
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public extendFunc(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const-string v0, "PicLibActivity"

    .line 371
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc -> json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/utils/PermissionRequest;->handleRequestResult(Lorg/json/JSONObject;)Z

    move-result v1

    const-string v2, "requestCode"

    .line 373
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_2

    .line 375
    sget p1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQUEST_CAMERA:I

    if-eq v2, p1, :cond_1

    sget p1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQUEST_CAMERA_STORAGE:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    sget p1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQUEST_STORAGE:I

    if-ne v2, p1, :cond_3

    .line 378
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "com.netease.ntunisdk.piclib.fragment.ShowMediaFragment"

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 376
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCameraAgain()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->toCamera()V

    goto :goto_1

    :cond_2
    const-string v1, "finish"

    .line 381
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 382
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "code"

    const/4 v2, -0x1

    .line 383
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    sget v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->RES_CODE:I

    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->setResult(ILandroid/content/Intent;)V

    .line 385
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc -> e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public initRequestOptions()V
    .locals 30

    move-object/from16 v1, p0

    const-string v2, "video"

    const-string v3, "image"

    .line 518
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 519
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    const/16 v6, 0xb4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/16 v11, 0x9

    .line 530
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v12, "json"

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "methodId"

    .line 532
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11

    :try_start_1
    const-string v0, "type"

    .line 533
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    .line 534
    :try_start_2
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v14, 0x0

    :cond_0
    const-string v0, "supportCamera"

    .line 535
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :try_start_3
    const-string v0, "supportGif"

    .line 536
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e

    :try_start_4
    const-string v0, "maxNum"

    .line 537
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "folder"

    .line 538
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    :try_start_5
    const-string v0, "quality"

    .line 540
    invoke-virtual {v12, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "selectTogether"

    .line 541
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    :try_start_6
    const-string v0, "singleSelected"

    .line 542
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v19
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    :try_start_7
    const-string v0, "supportImageEdit"

    .line 543
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    :try_start_8
    const-string v0, "clipRatio"

    .line 544
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    :try_start_9
    const-string v0, "singleJumpClip"

    .line 545
    invoke-virtual {v12, v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :try_start_a
    const-string v0, "ignoredFormat"

    .line 546
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v10, 0x0

    .line 548
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v10, v8, :cond_3

    .line 549
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 550
    sget-object v9, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy;->SUPPORT_IMAGE:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 551
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 552
    :cond_1
    sget-object v9, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy;->SUPPORT_VIDEO:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 553
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "path"

    .line 557
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :try_start_b
    const-string v0, "name"

    .line 558
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :try_start_c
    const-string v0, "imageFormat"

    .line 559
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :try_start_d
    const-string v0, "onlyClip"

    .line 560
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v23
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :try_start_e
    const-string v0, "videoMaxSelectDuration"

    .line 561
    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "videoMaxSelectSize"

    .line 562
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    :try_start_f
    const-string v0, "useCustomCamera"

    .line 563
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v25
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    :try_start_10
    const-string v0, "disableAddOther"

    .line 564
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v26
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    :try_start_11
    const-string v0, "disableTransformJpeg"

    .line 565
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    move/from16 v12, v16

    move/from16 v28, v23

    move/from16 v29, v24

    move/from16 v16, v0

    move-object/from16 v23, v9

    move-object/from16 v0, v17

    move/from16 v9, v26

    move/from16 v17, v6

    move/from16 v6, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v10

    move/from16 v10, v25

    goto/16 :goto_12

    :catch_0
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_10

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    :goto_3
    const/4 v10, 0x0

    goto :goto_d

    :catch_8
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_c

    :catch_9
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_b

    :catch_a
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_a

    :catch_b
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_9

    :catch_c
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_8

    :catch_d
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_7

    :catch_e
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_6

    :catch_f
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_5

    :catch_10
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_4

    :catch_11
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_4
    const/4 v14, 0x0

    :goto_5
    const/4 v15, 0x0

    :goto_6
    const/16 v16, 0x0

    :goto_7
    const/16 v17, 0x0

    :goto_8
    const/16 v18, 0x0

    :goto_9
    const/16 v19, 0x0

    :goto_a
    const/16 v20, 0x0

    :goto_b
    const/16 v21, 0x0

    :goto_c
    const/16 v22, 0x0

    :goto_d
    const/16 v23, 0x0

    :goto_e
    const/16 v24, 0x0

    :goto_f
    const/16 v25, 0x0

    :goto_10
    const/16 v26, 0x0

    .line 567
    :goto_11
    sget-boolean v12, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDebug:Z

    if-eqz v12, :cond_4

    .line 568
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 570
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v6

    const-string v6, "initRequestOptions -> e: "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "PicLibActivity"

    invoke-static {v6, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v12, v16

    move-object/from16 v0, v17

    move/from16 v6, v20

    move-object/from16 v20, v21

    move/from16 v28, v23

    move/from16 v29, v24

    move/from16 v17, v27

    const/16 v16, 0x0

    move-object/from16 v23, v9

    move-object/from16 v21, v10

    move/from16 v10, v25

    move/from16 v9, v26

    .line 573
    :goto_12
    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/utils/FormatUtil;->setIgnoredImageFormat(Ljava/util/List;)V

    .line 574
    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/utils/FormatUtil;->setIgnoredVideoFormat(Ljava/util/List;)V

    .line 576
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    sget-object v3, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v3, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    goto :goto_13

    .line 577
    :cond_5
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    sget-object v3, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v3, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    .line 579
    :cond_6
    :goto_13
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-boolean v10, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->useCustomCamera:Z

    .line 580
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-boolean v9, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->disableAddOther:Z

    .line 582
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iput v7, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->quality:I

    .line 583
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCameraHardware()Z

    move-result v3

    iput-boolean v3, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->supportCamera:Z

    .line 585
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iput-object v13, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->methodType:Ljava/lang/String;

    const-string v2, "openAlbum"

    .line 586
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-lez v11, :cond_7

    .line 588
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iput v11, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->maxNum:I

    :cond_7
    if-eqz v18, :cond_8

    .line 590
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    :cond_8
    if-eqz v19, :cond_9

    .line 593
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    const/4 v3, 0x1

    iput v3, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->maxNum:I

    .line 595
    :cond_9
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-boolean v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->supportCamera:Z

    if-eqz v2, :cond_a

    .line 596
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iput-boolean v15, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->supportCamera:Z

    .line 598
    :cond_a
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iput-boolean v12, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->supportGif:Z

    :cond_b
    if-eqz v0, :cond_c

    .line 600
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 601
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iput-object v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->folder:Ljava/lang/String;

    .line 603
    :cond_c
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-boolean v6, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->supportImageEdit:Z

    .line 604
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, ":"

    move-object/from16 v2, v20

    .line 605
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 606
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    const/4 v2, 0x0

    .line 610
    :try_start_12
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    .line 611
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_14

    :catch_12
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 616
    :goto_14
    iget-object v4, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput v3, v4, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->scaleX:I

    .line 617
    iget-object v3, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->scaleY:I

    goto :goto_15

    :cond_d
    const/4 v2, 0x0

    .line 620
    :goto_15
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v4, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne v3, v4, :cond_10

    iget-object v3, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->supportImageEdit:Z

    if-eqz v3, :cond_10

    iget-object v3, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->maxNum:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    if-nez v22, :cond_f

    :cond_e
    const-string v3, "openCamera"

    .line 622
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v22, :cond_10

    :cond_f
    const/4 v2, 0x1

    :cond_10
    iput-boolean v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    .line 623
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-object v8, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->toEditImagePath:Ljava/lang/String;

    .line 624
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-object/from16 v9, v23

    iput-object v9, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->toEditImageName:Ljava/lang/String;

    .line 625
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-object/from16 v10, v21

    iput-object v10, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->imageFormat:Ljava/lang/String;

    .line 626
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move/from16 v2, v28

    iput-boolean v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->onlyClip:Z

    .line 627
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move/from16 v6, v17

    iput v6, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectDurationOriginal:I

    .line 628
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    mul-int/lit16 v2, v6, 0x3e8

    iput v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectDuration:I

    .line 629
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move/from16 v2, v29

    iput v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectSizeOriginal:I

    .line 630
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    iput v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectSize:I

    .line 631
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move/from16 v2, v16

    iput-boolean v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->disableTransformJpeg:Z

    return-void
.end method

.method public synthetic lambda$onCreate$0$PicLibActivity(Ljava/lang/String;)V
    .locals 6

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PicLibActivity"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2e

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->mContext:Landroid/app/Activity;

    const-string v3, "picedit_unknown_mistake"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "FinishCurrentFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "EditMediaFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "ShowMediaFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "PreviewMediaFragment"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :sswitch_4
    const-string v1, "TakeMediaFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 251
    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->onBackPressed()V

    return-void

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->mContext:Landroid/app/Activity;

    const-string v1, "picedit_edit_page_error"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 260
    :pswitch_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->mContext:Landroid/app/Activity;

    const-string v1, "picedit_display_page_error"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 263
    :pswitch_3
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->mContext:Landroid/app/Activity;

    const-string v1, "picedit_preview_page_error"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    :goto_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->fragmentControl:Lcom/netease/ntunisdk/piclib/utils/FragmentControl;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->addFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 271
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/utils/FragmentSysStatusMap;->oriIsWhite(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->updateState(Ljava/lang/String;Z)V

    :goto_3
    return-void

    .line 255
    :pswitch_4
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCameraAgain()Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQUEST_CAMERA:I

    invoke-direct {p0, p1, v4}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->handlePermission(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 256
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->toCamera()V

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73685f13 -> :sswitch_4
        -0x63d58874 -> :sswitch_3
        -0x500f55c9 -> :sswitch_2
        -0x5ecbb6 -> :sswitch_1
        0x3a57ddb6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$onCreate$1$PicLibActivity(Ljava/lang/Boolean;)V
    .locals 0

    .line 279
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->processMedia()V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$2$PicLibActivity(Ljava/lang/Boolean;)V
    .locals 2

    .line 292
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->loadingCover:Lcom/netease/ntunisdk/piclib/view/LoadingCover;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->show()V

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->loadingCover:Lcom/netease/ntunisdk/piclib/view/LoadingCover;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadingCover e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PicLibActivity"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$processMedia$4$PicLibActivity([Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;[ZLcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;J)V
    .locals 3

    .line 849
    :try_start_0
    iget-wide v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->scaleImageLoadTasksTag:J

    cmp-long v2, p4, v0

    if-eqz v2, :cond_0

    return-void

    .line 851
    :cond_0
    iget p4, p3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    const/4 p5, 0x1

    sub-int/2addr p4, p5

    aput-object p3, p1, p4

    .line 852
    iget p3, p3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    sub-int/2addr p3, p5

    aput-boolean p5, p2, p3

    .line 853
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->processCompleted([Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 854
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->sendMedia([Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 857
    sget-boolean p2, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDebug:Z

    if-eqz p2, :cond_1

    .line 858
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 860
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processMedia -> e: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PicLibActivity"

    invoke-static {p3, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->sendError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$toCamera$3$PicLibActivity(Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;)V
    .locals 1

    .line 717
    sget-object v0, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->IMAGE:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->takeMedia(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)V

    goto :goto_0

    .line 718
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->VIDEO:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->takeMedia(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)V

    goto :goto_0

    .line 719
    :cond_1
    sget-object v0, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->CANCEL:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    if-ne p1, v0, :cond_2

    .line 720
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->methodType:Ljava/lang/String;

    const-string v0, "openCamera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 721
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "PicLibActivity"

    const-string v5, "onActivityResult"

    .line 468
    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 470
    iget v5, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQ_CODE:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 473
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    if-ne v1, v5, :cond_0

    if-ne v6, v2, :cond_0

    .line 470
    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->uriFromCamera:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 471
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 473
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->loadingCover:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 474
    new-instance v1, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->mContext:Landroid/app/Activity;

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->uriFromCamera:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->fromCameraPath:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->execute(Lcom/netease/ntunisdk/piclib/thread/Task;)V

    goto/16 :goto_1

    .line 475
    :cond_0
    iget v5, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQ_CODE:I

    const-string v9, "openCamera"

    if-ne v1, v5, :cond_1

    if-nez v2, :cond_1

    .line 477
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->methodType:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->finish()V

    goto/16 :goto_1

    .line 480
    :cond_1
    sget v5, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->TO_OTHER:I

    const/4 v10, 0x0

    if-ne v1, v5, :cond_3

    if-ne v2, v6, :cond_3

    if-eqz v3, :cond_2

    .line 483
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->loadingCover:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 484
    new-instance v1, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->mContext:Landroid/app/Activity;

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->loadingCover:Lcom/netease/ntunisdk/piclib/view/LoadingCover;

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;-><init>(Landroid/content/Intent;Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;Lcom/netease/ntunisdk/piclib/view/LoadingCover;)V

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->execute(Lcom/netease/ntunisdk/piclib/thread/Task;)V

    goto :goto_1

    .line 486
    :cond_2
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->mContext:Landroid/app/Activity;

    const-string v2, "picedit_add_failed"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 488
    :cond_3
    iget v5, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQ_TO_CUSTOM_CAMERA_CODE:I

    if-ne v1, v5, :cond_7

    const/16 v1, 0x3ea

    if-eq v2, v1, :cond_4

    const/4 v10, 0x1

    :cond_4
    if-nez v10, :cond_6

    if-eqz v3, :cond_6

    const-string v1, "catch_result"

    .line 491
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 492
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "onActivityResult -> did not catch media"

    .line 493
    invoke-static {v4, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_5
    new-instance v1, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;

    iget-object v12, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->mContext:Landroid/app/Activity;

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    const/16 v16, 0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->execute(Lcom/netease/ntunisdk/piclib/thread/Task;)V

    :cond_6
    move v7, v10

    :goto_0
    if-eqz v7, :cond_7

    .line 499
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->methodType:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->finish()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 746
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->cancelLoadMediaFromOtherTask()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 747
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->cancelImageCompressionTask()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 748
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->handleEditState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 749
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->hideBucket()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 750
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->quitFragment()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    .line 752
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 755
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 756
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_4
    :goto_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 182
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 184
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->refreshCurrentState()V

    .line 185
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "PicLibActivity"

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const-string v0, "onConfigurationChanged -> landscape"

    .line 187
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->resetCache()V

    .line 189
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->configuration:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 192
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    const-string v0, "onConfigurationChanged -> portrait"

    .line 194
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->resetCache()V

    .line 196
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->configuration:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 204
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_us_pic_lib"

    .line 205
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->setContentView(I)V

    const-string v0, "PicLibActivity"

    const-string v1, "onCreate"

    .line 206
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate -> enableRTL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->enableRTL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-boolean v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->enableRTL:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 210
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 212
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->reset()V

    .line 213
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/UniExtendFuncHandler;->register(Lcom/netease/ntunisdk/piclib/utils/UniExtendFuncHandler$IExtendFuncListener;)V

    .line 214
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "uni_sdk_pic_edit_cache"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate -> mkdirs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_1
    iput-object p0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->mContext:Landroid/app/Activity;

    .line 220
    new-instance v0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/piclib/view/LoadingCover;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->loadingCover:Lcom/netease/ntunisdk/piclib/view/LoadingCover;

    const-string v0, "fl_pic_lib_container"

    .line 221
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->picLibContainerId:I

    .line 223
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy;->VMPFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->currentActivity:I

    .line 225
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->initLiveData()V

    .line 226
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->initRequestOptions()V

    .line 227
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->recordArab()V

    .line 228
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    new-instance v1, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    .line 229
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setLandscapeStatusWhite(Landroid/view/Window;)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 234
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setPortraitStatusWhite(Landroid/view/Window;)V

    .line 237
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->maxNum:I

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->setMaxSize(I)V

    .line 238
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->density:F

    .line 240
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 241
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->fragmentControl:Lcom/netease/ntunisdk/piclib/utils/FragmentControl;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->fragmentControl:Lcom/netease/ntunisdk/piclib/utils/FragmentControl;

    .line 242
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->setManager(Landroidx/fragment/app/FragmentManager;)V

    .line 243
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->fragmentControl:Lcom/netease/ntunisdk/piclib/utils/FragmentControl;

    iget v1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->picLibContainerId:I

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->setContainer(I)V

    .line 245
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$xKUKooy6hweq3ig0r6pOYuBiWm4;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$xKUKooy6hweq3ig0r6pOYuBiWm4;-><init>(Lcom/netease/ntunisdk/piclib/PicLibActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 277
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$GH3gQZK2yRFTT_KUcowAiEIQqow;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$GH3gQZK2yRFTT_KUcowAiEIQqow;-><init>(Lcom/netease/ntunisdk/piclib/PicLibActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 290
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->loadingCover:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$G-yQQ3a6TdlXzIyY7claLFfz_Yg;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$G-yQQ3a6TdlXzIyY7claLFfz_Yg;-><init>(Lcom/netease/ntunisdk/piclib/PicLibActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 302
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->methodType:Ljava/lang/String;

    const-string v1, "openAlbum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    sget v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQUEST_STORAGE:I

    invoke-direct {p0, v0, v2}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->handlePermission(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 304
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "com.netease.ntunisdk.piclib.fragment.ShowMediaFragment"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->methodType:Ljava/lang/String;

    const-string v1, "editImage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->toEditDirectly()V

    goto :goto_1

    .line 309
    :cond_5
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->checkCameraAgain()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQUEST_CAMERA_STORAGE:I

    invoke-direct {p0, v0, v2}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->handlePermission(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 310
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->toCamera()V

    :cond_6
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "PicLibActivity"

    const-string v1, "onDestroy"

    .line 419
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/UniExtendFuncHandler;->unregister(Lcom/netease/ntunisdk/piclib/utils/UniExtendFuncHandler$IExtendFuncListener;)V

    .line 421
    invoke-static {}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->cancel()V

    .line 422
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->getBitmapCache(Landroid/content/Context;)Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->release()V

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->onScaleCallbackListener:Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;

    .line 424
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->fragmentControl:Lcom/netease/ntunisdk/piclib/utils/FragmentControl;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->clear()V

    .line 425
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 334
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 335
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->hasStopped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->hasStopped:Z

    .line 337
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->refreshCurrentState()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 346
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->hasStopped:Z

    return-void
.end method

.method public takeMedia(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "takeMedia, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PicLibActivity"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 446
    sget-object v2, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne p1, v2, :cond_0

    const-string p1, "android.media.action.VIDEO_CAPTURE"

    .line 447
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VID_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "android.media.action.IMAGE_CAPTURE"

    .line 450
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMG_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 453
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "uni_sdk_pic_edit_cache"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->fromCameraPath:Ljava/lang/String;

    .line 455
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_1

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".piclib.OtherWayFileProvider"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->uriFromCamera:Landroid/net/Uri;

    goto :goto_1

    .line 458
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->uriFromCamera:Landroid/net/Uri;

    .line 460
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uriFromCamera: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->uriFromCamera:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 461
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 462
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->uriFromCamera:Landroid/net/Uri;

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 463
    iget p1, p0, Lcom/netease/ntunisdk/piclib/PicLibActivity;->REQ_CODE:I

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
