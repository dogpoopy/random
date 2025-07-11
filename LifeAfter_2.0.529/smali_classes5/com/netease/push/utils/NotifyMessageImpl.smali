.class public Lcom/netease/push/utils/NotifyMessageImpl;
.super Ljava/lang/Object;
.source "NotifyMessageImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netease/push/utils/NotifyMessageImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static notifyActivityName:Ljava/lang/String;


# instance fields
.field public mChannelId:Ljava/lang/String;

.field public mChannelName:Ljava/lang/String;

.field public mExt:Ljava/lang/String;

.field public mGroupId:Ljava/lang/String;

.field public mGroupName:Ljava/lang/String;

.field public mIcon:I

.field public mMsg:Ljava/lang/String;

.field public mNative:Z

.field public mNotifyid:I

.field public mReqid:Ljava/lang/String;

.field public mServiceType:Ljava/lang/String;

.field public mSound:Ljava/lang/String;

.field public mTime:J

.field public mTitle:Ljava/lang/String;

.field public ngpushJson:Lorg/json/JSONObject;

.field public passJsonString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/push/utils/NotifyMessageImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 60
    sput-object v0, Lcom/netease/push/utils/NotifyMessageImpl;->notifyActivityName:Ljava/lang/String;

    .line 346
    new-instance v0, Lcom/netease/push/utils/NotifyMessageImpl$1;

    invoke-direct {v0}, Lcom/netease/push/utils/NotifyMessageImpl$1;-><init>()V

    sput-object v0, Lcom/netease/push/utils/NotifyMessageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 45
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    const-string v2, "niepush"

    .line 47
    iput-object v2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    .line 49
    iput-boolean v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTime:J

    .line 52
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    const-string v0, "group_unisdk_ngpush_id"

    .line 55
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    const-string v0, "group_unisdk_ngpush_name"

    .line 56
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_id"

    .line 57
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_name"

    .line 58
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/netease/push/utils/NotifyMessageImpl;->clear()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 45
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    const-string v2, "niepush"

    .line 47
    iput-object v2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    .line 49
    iput-boolean v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTime:J

    .line 52
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    const-string v0, "group_unisdk_ngpush_id"

    .line 55
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    const-string v0, "group_unisdk_ngpush_name"

    .line 56
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_id"

    .line 57
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_name"

    .line 58
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    .line 113
    invoke-virtual {p0, p1}, Lcom/netease/push/utils/NotifyMessageImpl;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 45
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    const-string v2, "niepush"

    .line 47
    iput-object v2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    .line 49
    iput-boolean v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTime:J

    .line 52
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    const-string v0, "group_unisdk_ngpush_id"

    .line 55
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    const-string v0, "group_unisdk_ngpush_name"

    .line 56
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_id"

    .line 57
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_name"

    .line 58
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    .line 74
    iput p4, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 75
    iput-object p5, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 45
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    const-string v2, "niepush"

    .line 47
    iput-object v2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    .line 49
    iput-boolean v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTime:J

    .line 52
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    const-string v0, "group_unisdk_ngpush_id"

    .line 55
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    const-string v0, "group_unisdk_ngpush_name"

    .line 56
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_id"

    .line 57
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_name"

    .line 58
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    .line 83
    iput p4, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 84
    iput-object p5, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    .line 86
    iput-object p7, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 45
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    const-string v2, "niepush"

    .line 47
    iput-object v2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    .line 49
    iput-boolean v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTime:J

    .line 52
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    const-string v0, "group_unisdk_ngpush_id"

    .line 55
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    const-string v0, "group_unisdk_ngpush_name"

    .line 56
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_id"

    .line 57
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_name"

    .line 58
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    .line 93
    iput p4, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 94
    iput-object p5, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 95
    iput-object p6, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    .line 96
    iput-object p7, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    .line 97
    iput-object p8, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 45
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    const-string v2, "niepush"

    .line 47
    iput-object v2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    .line 49
    iput-boolean v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTime:J

    .line 52
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    const-string v0, "group_unisdk_ngpush_id"

    .line 55
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    const-string v0, "group_unisdk_ngpush_name"

    .line 56
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_id"

    .line 57
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    const-string v0, "channel_unisdk_ngpush_name"

    .line 58
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    .line 104
    iput p4, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 105
    iput-object p5, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 106
    iput-object p6, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    .line 107
    iput-object p7, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    .line 108
    iput-object p8, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    .line 109
    iput-object p9, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    return-void
.end method

.method public static getFrom(Landroid/app/Activity;)Lcom/netease/push/utils/NotifyMessageImpl;
    .locals 0

    .line 462
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/push/utils/NotifyMessageImpl;->getFrom(Landroid/content/Intent;)Lcom/netease/push/utils/NotifyMessageImpl;

    move-result-object p0

    return-object p0
.end method

.method public static getFrom(Landroid/content/Intent;)Lcom/netease/push/utils/NotifyMessageImpl;
    .locals 15

    .line 360
    sget-object v0, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrom, intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v0, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyActivityName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/push/utils/NotifyMessageImpl;->notifyActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrom, intent Extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 366
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    sget-object v4, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive data from push, key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", content = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 371
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "msg"

    .line 372
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ext"

    .line 373
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const-string v1, "icon"

    .line 374
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v1, "notify_id"

    .line 375
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "reqid"

    .line 376
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "sound"

    .line 377
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "service_type"

    .line 378
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "passJsonString"

    .line 379
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 380
    sget-object v1, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "title="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    sget-object v1, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msg="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-object v1, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ext="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object v1, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "icon="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v1, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyid="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v1, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reqid="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget-object v1, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "serviceType="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v1, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "passJsonString="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v10, "ngpush"

    if-nez v1, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 441
    :cond_1
    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 442
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 444
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 447
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v10, v0

    .line 450
    :goto_1
    new-instance p0, Lcom/netease/push/utils/NotifyMessageImpl;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/netease/push/utils/NotifyMessageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 451
    iput v11, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    goto/16 :goto_7

    .line 453
    :cond_2
    new-instance p0, Lcom/netease/push/utils/NotifyMessageImpl;

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/netease/push/utils/NotifyMessageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 454
    iput v11, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    goto/16 :goto_7

    :cond_3
    :goto_2
    const/4 v1, 0x0

    .line 391
    invoke-static {v1}, Lcom/netease/push/utils/DeviceInfo;->isMIUI(Landroid/content/Context;)Z

    move-result v7

    const-string v8, "getNotifyMessageFromIntent"

    const/4 v9, 0x1

    if-eqz v7, :cond_4

    .line 392
    sget-object v7, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Goto miui getNotifyMessageFromIntent:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/netease/push/utils/DeviceInfo;->isMIUI(Landroid/content/Context;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string v7, "com.netease.inner.pushclient.miui.PushClient"

    .line 394
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v12, v9, [Ljava/lang/Class;

    .line 395
    const-class v13, Landroid/content/Intent;

    aput-object v13, v12, v0

    invoke-virtual {v7, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v12, v9, [Ljava/lang/Object;

    aput-object p0, v12, v0

    .line 396
    invoke-virtual {v7, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netease/push/utils/NotifyMessageImpl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    .line 398
    sget-object v12, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MiPush_SDK_Client jars not found:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v7, v1

    .line 401
    :goto_3
    invoke-static {v1}, Lcom/netease/push/utils/DeviceInfo;->isHuawei(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 402
    sget-object v12, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Goto huawei getNotifyMessageFromIntent:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/netease/push/utils/DeviceInfo;->isHuawei(Landroid/content/Context;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    const-string v12, "com.netease.inner.pushclient.huawei.PushClient"

    .line 404
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Class;

    .line 405
    const-class v14, Landroid/content/Intent;

    aput-object v14, v13, v0

    invoke-virtual {v12, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v12, v9, [Ljava/lang/Object;

    aput-object p0, v12, v0

    .line 406
    invoke-virtual {v8, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/push/utils/NotifyMessageImpl;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 408
    sget-object v8, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Huawei jars not found:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v1, v7

    :goto_4
    :try_start_3
    const-string v7, "com.google.firebase.iid.FirebaseInstanceIdReceiver"

    .line 413
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v7, "com.netease.inner.pushclient.firebase.MyFirebaseInstanceIDService"

    .line 414
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v0, 0x1

    goto :goto_5

    :catch_3
    move-exception v7

    .line 416
    sget-object v8, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ClassNotFoundException:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz v0, :cond_8

    .line 420
    sget-object v1, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fcm \u901a\u77e5\u680f\u4e0a\u62a5:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 422
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 423
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 424
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 425
    sget-object v9, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FirebasePushMessage key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "FirebasePushMessage value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 429
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v1, v9

    goto :goto_6

    :catch_4
    move-exception v8

    .line 433
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    :cond_7
    move-object v10, v1

    .line 437
    new-instance p0, Lcom/netease/push/utils/NotifyMessageImpl;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v7, ""

    const-string v8, "fcm"

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/netease/push/utils/NotifyMessageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 438
    iput v11, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    goto :goto_7

    :cond_8
    move-object p0, v1

    :goto_7
    return-object p0
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 63
    sget-object v0, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static readFromJsonString(Ljava/lang/String;)Lcom/netease/push/utils/NotifyMessageImpl;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 273
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "title"

    .line 274
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "msg"

    .line 275
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 276
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "content"

    .line 277
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    move-object v3, p0

    const-string p0, "ext"

    .line 279
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x0

    const-string v1, "icon"

    .line 280
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v1, "notify_id"

    .line 281
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string p0, "reqid"

    .line 282
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p0, "sound"

    .line 283
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p0, "service_type"

    .line 284
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string p0, "passJsonString"

    .line 285
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 286
    sget-object p0, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PassJsonString:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    if-eqz v9, :cond_1

    .line 290
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "ngpush"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 293
    sget-object v10, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ngpushJson parse error:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    move-object v10, p0

    .line 295
    sget-object p0, Lcom/netease/push/utils/NotifyMessageImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ngpushJson:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "channel_id"

    .line 296
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "channel_name"

    .line 297
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "group_id"

    .line 298
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "group_name"

    .line 299
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v14, Lcom/netease/push/utils/NotifyMessageImpl;

    move-object v1, v14

    invoke-direct/range {v1 .. v10}, Lcom/netease/push/utils/NotifyMessageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 302
    iput-object v13, v14, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    .line 303
    iput-object v0, v14, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    .line 304
    iput-object v12, v14, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    .line 305
    iput-object p0, v14, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    .line 307
    iput v11, v14, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    return-object v14
.end method


# virtual methods
.method public clear()V
    .locals 3

    const-string v0, ""

    .line 117
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    const/4 v1, 0x0

    .line 120
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 121
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    const-string v2, "niepush"

    .line 123
    iput-object v2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    .line 124
    iput v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    .line 125
    iput-boolean v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    .line 126
    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    .line 127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getNative()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    return v0
.end method

.method public getNgpushJson()Lorg/json/JSONObject;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNotifyActivityName()Ljava/lang/String;
    .locals 1

    .line 234
    sget-object v0, Lcom/netease/push/utils/NotifyMessageImpl;->notifyActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyid()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    return v0
.end method

.method public getPassJsonString()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    return-object v0
.end method

.method public getReqid()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public setNgpushJson(Lorg/json/JSONObject;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    return-void
.end method

.method public setNotifyActivityName(Ljava/lang/String;)V
    .locals 0

    .line 238
    sput-object p1, Lcom/netease/push/utils/NotifyMessageImpl;->notifyActivityName:Ljava/lang/String;

    return-void
.end method

.method public setPassJsonString(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notifyid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", native:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",groupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",groupName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",channelId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",channelName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",passJsonString"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ngpushJson"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToJsonString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 252
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->passJsonString:Ljava/lang/String;

    const-string v2, "passJsonString"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->ngpushJson:Lorg/json/JSONObject;

    const-string v2, "ngpushJson"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    const-string v2, "ext"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    iget v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    iget v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    const-string v2, "notify_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    const-string v2, "reqid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    const-string v2, "sound"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    const-string v2, "service_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    const-string v2, "group_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    const-string v2, "channel_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    const-string v2, "channel_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 326
    iget-object p2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-object p2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object p2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget p2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mIcon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget p2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNotifyid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget-object p2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mReqid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object p2, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mServiceType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
