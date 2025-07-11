.class public Lcom/netease/push/utils/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field public static final DEFAULT_FIRST_START:Z = true

.field public static final DEFAULT_LIGHT:Z = false

.field public static final DEFAULT_NO_REPEAT_INTERVAL:I = 0x12c

.field public static final DEFAULT_RECEIVE_TIME:J = 0x0L

.field public static final DEFAULT_REPEAT_PROTECT:Z = false

.field public static final DEFAULT_SOUND:Z = false

.field public static final DEFAULT_VIBREATE:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mLastReceiveTime:J

.field public mNoRepeatInterval:I

.field public mPackageName:Ljava/lang/String;

.field public mbEnableLight:Z

.field public mbEnableSound:Z

.field public mbEnableVibrate:Z

.field public mbFirstStart:Z

.field public mbRepeatProtect:Z

.field private messageList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/netease/push/proto/ProtoClientWrapper$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/push/utils/AppInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/push/utils/AppInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/netease/push/utils/AppInfo;->mbEnableVibrate:Z

    .line 37
    iput-boolean v0, p0, Lcom/netease/push/utils/AppInfo;->mbEnableLight:Z

    .line 40
    iput-boolean v0, p0, Lcom/netease/push/utils/AppInfo;->mbRepeatProtect:Z

    const/16 v0, 0x12c

    .line 41
    iput v0, p0, Lcom/netease/push/utils/AppInfo;->mNoRepeatInterval:I

    .line 43
    iput-boolean v1, p0, Lcom/netease/push/utils/AppInfo;->mbFirstStart:Z

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/push/utils/AppInfo;->messageList:Ljava/util/LinkedList;

    .line 53
    invoke-virtual {p0}, Lcom/netease/push/utils/AppInfo;->clear()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/netease/push/utils/AppInfo;->mbEnableVibrate:Z

    .line 37
    iput-boolean v0, p0, Lcom/netease/push/utils/AppInfo;->mbEnableLight:Z

    .line 40
    iput-boolean v0, p0, Lcom/netease/push/utils/AppInfo;->mbRepeatProtect:Z

    const/16 v0, 0x12c

    .line 41
    iput v0, p0, Lcom/netease/push/utils/AppInfo;->mNoRepeatInterval:I

    .line 43
    iput-boolean v1, p0, Lcom/netease/push/utils/AppInfo;->mbFirstStart:Z

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/push/utils/AppInfo;->messageList:Ljava/util/LinkedList;

    .line 57
    iput-object p1, p0, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/netease/push/utils/AppInfo;->clear()V

    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 49
    sget-object v0, Lcom/netease/push/utils/AppInfo;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lcom/netease/push/utils/AppInfo;->mbEnableVibrate:Z

    .line 64
    iput-boolean v0, p0, Lcom/netease/push/utils/AppInfo;->mbRepeatProtect:Z

    .line 65
    iput-boolean v1, p0, Lcom/netease/push/utils/AppInfo;->mbFirstStart:Z

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    .line 67
    iput-boolean v0, p0, Lcom/netease/push/utils/AppInfo;->mbEnableLight:Z

    return-void
.end method

.method public enableRepeatProtect(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/netease/push/utils/AppInfo;->mbRepeatProtect:Z

    return-void
.end method

.method public filterMessage(Lcom/netease/push/proto/ProtoClientWrapper$Message;)Z
    .locals 9

    .line 79
    iget-boolean v0, p0, Lcom/netease/push/utils/AppInfo;->mbRepeatProtect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    iget-wide v2, p1, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    iget v0, p0, Lcom/netease/push/utils/AppInfo;->mNoRepeatInterval:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 85
    iget-object v0, p0, Lcom/netease/push/utils/AppInfo;->messageList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/push/proto/ProtoClientWrapper$Message;

    .line 86
    iget-wide v6, v5, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
    :cond_2
    iget-object v6, v5, Lcom/netease/push/proto/ProtoClientWrapper$Message;->content:Ljava/lang/String;

    iget-object v7, p1, Lcom/netease/push/proto/ProtoClientWrapper$Message;->content:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, v5, Lcom/netease/push/proto/ProtoClientWrapper$Message;->title:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/push/proto/ProtoClientWrapper$Message;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 96
    iget-object v2, p0, Lcom/netease/push/utils/AppInfo;->messageList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    if-ge v1, v4, :cond_5

    .line 99
    iget-object p1, p0, Lcom/netease/push/utils/AppInfo;->messageList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return v0
.end method

.method public setRepeatProtectInterval(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/netease/push/utils/AppInfo;->mNoRepeatInterval:I

    return-void
.end method
