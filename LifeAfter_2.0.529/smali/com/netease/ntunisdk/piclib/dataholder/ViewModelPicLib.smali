.class public Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;
.super Landroidx/lifecycle/ViewModel;
.source "ViewModelPicLib.java"


# instance fields
.field public arabFlag:Z

.field public configuration:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public currentActivity:I

.field public density:F

.field public disableAddOther:Z

.field public disableTransformJpeg:Z

.field public editState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public editedInfoMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;",
            ">;"
        }
    .end annotation
.end field

.field public fragmentControl:Lcom/netease/ntunisdk/piclib/utils/FragmentControl;

.field public imageFormat:Ljava/lang/String;

.field public isEditImage:Z

.field public loadingCover:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public localMediaDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

.field public needToDeleteCameraMediaFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public newFragment:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public notifyShowingDataUpdate:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field public onlyClip:Z

.field public previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

.field public processing:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public scaleX:I

.field public scaleY:I

.field public selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

.field public sendSelected:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public showBucket:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public singleJumpClip:Z

.field public supportImageEdit:Z

.field public sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

.field public targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

.field public toEditImageName:Ljava/lang/String;

.field public toEditImagePath:Ljava/lang/String;

.field public useCustomCamera:Z

.field public videoMaxSelectDuration:I

.field public videoMaxSelectDurationOriginal:I

.field public videoMaxSelectSize:I

.field public videoMaxSelectSizeOriginal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 18
    new-instance v0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->fragmentControl:Lcom/netease/ntunisdk/piclib/utils/FragmentControl;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->localMediaDataList:Ljava/util/List;

    .line 22
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    .line 24
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    .line 29
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    .line 41
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->editedInfoMap:Landroidx/collection/ArrayMap;

    const v0, 0x2bf20

    .line 51
    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectDuration:I

    const/16 v0, 0xb4

    .line 52
    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectDurationOriginal:I

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->needToDeleteCameraMediaFiles:Ljava/util/List;

    return-void
.end method
