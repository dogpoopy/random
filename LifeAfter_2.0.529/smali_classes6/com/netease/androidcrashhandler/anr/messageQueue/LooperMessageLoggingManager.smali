.class public Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;
.super Ljava/lang/Object;
.source "LooperMessageLoggingManager.java"


# static fields
.field private static final END:Ljava/lang/String; = "<<<<< Finished"

.field private static final END_TYPE:Ljava/lang/String; = "END"

.field private static final IDLE_MERGE_TYPE:Ljava/lang/String; = "IDLE_MERGE"

.field private static final IDLE_TYPE:Ljava/lang/String; = "IDLE"

.field private static final INPUT_TYPE:Ljava/lang/String; = "INPUT"

.field public static final LAG_TIME:J = 0x7d0L

.field private static final LAG_TYPE:Ljava/lang/String; = "LAG"

.field public static final MERGE_TIME:J = 0x3e8L

.field private static final MERGE_TYPE:Ljava/lang/String; = "MERGE"

.field private static final QUEUE_MAX:I = 0x14

.field private static final START:Ljava/lang/String; = ">>>>> Dispatching"

.field private static final TAG:Ljava/lang/String; = "trace"

.field public static final TIME_MILLIS_TO_NANO:I = 0xf4240

.field public static final TIME_SECOND_TO_NANO:I = 0x3b9aca00

.field private static mHandleQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static mInputHandleQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static sLooperMessageLoggingManager:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;


# instance fields
.field private index:J

.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/anr/messageQueue/MessageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

.field private mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

.field private final mLock:[B

.field private mPreMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleQueue:Ljava/util/concurrent/BlockingQueue;

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputHandleQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    .line 51
    new-instance v0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mPreMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    .line 53
    new-instance v0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 55
    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mLock:[B

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mCallbackList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)[B
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mLock:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mCallbackList:Ljava/util/List;

    return-object p0
.end method

.method private add2Queue(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 80
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 82
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 83
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    .line 86
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LooperMessageLoggingManager [printAnrMeessage] Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "trace"

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addInput2Queue(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 95
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputHandleQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 97
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputHandleQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    .line 101
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputHandleQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LooperMessageLoggingManager [printAnrMeessage] Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "trace"

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dumpInputMsg()Lorg/json/JSONArray;
    .locals 4

    .line 479
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 481
    sget-object v1, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputHandleQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 483
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 484
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mLock:[B

    monitor-enter v2

    .line 485
    :goto_0
    :try_start_0
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputHandleQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 486
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputHandleQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    .line 487
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 491
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 492
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    .line 493
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->parse2Json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 489
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method private dumpLooperMsg()Lorg/json/JSONArray;
    .locals 4

    .line 458
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 460
    sget-object v1, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 463
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mLock:[B

    monitor-enter v2

    .line 464
    :goto_0
    :try_start_0
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 465
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    .line 466
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 470
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 471
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    .line 472
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->parse2Json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 468
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;
    .locals 1

    .line 72
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->sLooperMessageLoggingManager:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->sLooperMessageLoggingManager:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    .line 76
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->sLooperMessageLoggingManager:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    return-object v0
.end method


# virtual methods
.method public getAnrMessage(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "trace"

    const-string v1, "LooperMessageLoggingManager [printAnrMessage] start"

    .line 169
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mLock:[B

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->hasStartTime()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "trace"

    const-string v2, "LooperMessageLoggingManager [printAnrMessage] inputLag"

    .line 172
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :try_start_1
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->clone()Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 177
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 178
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartTime(J)V

    .line 179
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartInfo(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setDuration(D)V

    .line 181
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setType(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getNativeStaicTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setNativeStaicTrace(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStackTrace(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getActionTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    .line 186
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndTime(J)V

    const-string v2, "<<<<< Finished Input Lag Not End"

    .line 187
    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndInfo(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->calculateDuration()V

    const-string v2, "trace"

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LooperMessageLoggingManager [handleMessageInfo] \u6536\u96c6\u5230InputQueue  [B]MSG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->addInput2Queue(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V

    .line 191
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->clean()V

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-string v1, "trace"

    const-string v2, "LooperMessageLoggingManager [printAnrMessage] thread lag"

    .line 194
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndTime(J)V

    .line 196
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    const-string v2, "<<<<< Finished On Thread Lag"

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndInfo(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->calculateDuration()V

    .line 198
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->addMessageCount()V

    .line 199
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    .line 200
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getJavaMainThreadStackTrack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStackTrace(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getThreadFullUnwind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setNativeStaicTrace(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    const-string v2, "END"

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setType(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :try_start_3
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->clone()Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v1

    .line 205
    invoke-virtual {p0, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->handleMessageInfoNew(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V

    .line 206
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mHandleMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->clean()V
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 208
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const-string v1, "trace"

    const-string v2, "LooperMessageLoggingManager [printAnrMessage] normal"

    .line 211
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;-><init>()V

    .line 213
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartTime(J)V

    .line 214
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndTime(J)V

    .line 215
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->calculateDuration()V

    .line 216
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->addMessageCount()V

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    .line 218
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getJavaMainThreadStackTrack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStackTrace(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getThreadFullUnwind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setNativeStaicTrace(Ljava/lang/String;)V

    const-string v2, "END"

    .line 220
    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setType(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->handleMessageInfoNew(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V

    :goto_1
    const-string v1, "trace"

    const-string v2, "LooperMessageLoggingManager [printAnrMeessage] end"

    .line 223
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->dumpLooperMsg()Lorg/json/JSONArray;

    move-result-object v1

    .line 225
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->dumpInputMsg()Lorg/json/JSONArray;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v3, "handle_message"

    .line 227
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "input_message"

    .line 228
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 232
    :try_start_6
    monitor-exit v0

    return-void

    :catch_2
    move-exception p1

    .line 230
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 232
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public handleMessageInfoNew(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 282
    new-instance v2, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-direct {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;-><init>()V

    .line 286
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "MERGE"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v3, :cond_0

    .line 287
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartTime(J)V

    .line 288
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndTime(J)V

    .line 289
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartCpuTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartCpuTime(J)V

    .line 290
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndCpuTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndCpuTime(J)V

    .line 291
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->calculateDuration()V

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>> Dispatching MergeMsg:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartInfo(Ljava/lang/String;)V

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<<<< Finished MergeMsg:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndInfo(Ljava/lang/String;)V

    .line 294
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v7, v3

    invoke-virtual {v2, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setMessageCount(J)V

    .line 295
    invoke-virtual {v2, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setType(Ljava/lang/String;)V

    .line 300
    :cond_0
    new-instance v3, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-direct {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;-><init>()V

    const-wide/16 v7, 0x0

    .line 301
    iget-object v9, v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mPreMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v9}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndTime()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    .line 302
    iget-object v7, v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mPreMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartTime(J)V

    .line 303
    iget-object v7, v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mPreMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndCpuTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartCpuTime(J)V

    const-string v7, ">>>>> Dispatching nativePollOnce"

    .line 304
    invoke-virtual {v3, v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartInfo(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndTime(J)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartCpuTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndCpuTime(J)V

    .line 307
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->calculateDuration()V

    const-string v7, "<<<<< Finished nativePollOnce"

    .line 308
    invoke-virtual {v3, v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndInfo(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->addMessageCount()V

    const-string v7, "IDLE"

    .line 310
    invoke-virtual {v3, v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setType(Ljava/lang/String;)V

    .line 318
    :cond_1
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v7

    const-wide v9, 0x41cdcd6500000000L    # 1.0E9

    cmpl-double v11, v7, v9

    if-lez v11, :cond_2

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 326
    :goto_0
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v11

    const-wide v13, 0x41ddcd6500000000L    # 2.0E9

    cmpl-double v8, v11, v9

    if-lez v8, :cond_5

    if-nez v7, :cond_3

    .line 330
    sget-object v5, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    const/4 v7, 0x1

    .line 338
    :cond_3
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v11

    cmpl-double v5, v11, v13

    if-lez v5, :cond_4

    .line 339
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v5

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getNativeStackTrace(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setNativeStaicTrace(Ljava/lang/String;)V

    .line 341
    :cond_4
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v5

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getStackTrace(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStackTrace(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    if-nez v7, :cond_7

    .line 345
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v11

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v15

    add-double/2addr v11, v15

    cmpl-double v8, v11, v9

    if-lez v8, :cond_7

    .line 350
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v11

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v15

    add-double/2addr v11, v15

    div-double/2addr v7, v11

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v15, v7, v11

    if-lez v15, :cond_6

    .line 353
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndTime(J)V

    .line 354
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndCpuTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndCpuTime(J)V

    .line 355
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->calculateDuration()V

    const-string v7, "IDLE_MERGE"

    .line 356
    invoke-virtual {v2, v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setType(Ljava/lang/String;)V

    .line 357
    sget-object v7, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getMessageCount()J

    move-result-wide v11

    add-long/2addr v7, v11

    invoke-virtual {v2, v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setMessageCount(J)V

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    :goto_1
    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    .line 368
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndTime()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndTime(J)V

    .line 369
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndCpuTime()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndCpuTime(J)V

    .line 370
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->calculateDuration()V

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    .line 372
    invoke-virtual {v2, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setType(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->addMessageCount()V

    :cond_8
    :goto_2
    if-eqz v7, :cond_9

    .line 376
    invoke-direct {v0, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->add2Queue(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V

    .line 377
    sget-object v8, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_9
    if-eqz v5, :cond_a

    .line 381
    invoke-direct {v0, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->add2Queue(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V

    :cond_a
    if-nez v7, :cond_c

    if-nez v5, :cond_c

    .line 387
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v11

    const-wide/16 v15, 0x0

    cmpl-double v8, v11, v15

    if-lez v8, :cond_c

    .line 388
    sget-object v8, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_b

    .line 389
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartCpuTime()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartCpuTime(J)V

    .line 390
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartTime(J)V

    const-string v8, ">>>>> Dispatching MergeMsg"

    .line 391
    invoke-virtual {v2, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartInfo(Ljava/lang/String;)V

    const-string v8, "<<<<< Finished MergeMsg"

    .line 392
    invoke-virtual {v2, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndInfo(Ljava/lang/String;)V

    .line 393
    sget-object v8, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-long v11, v8

    invoke-virtual {v2, v11, v12}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setMessageCount(J)V

    .line 394
    invoke-virtual {v2, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setType(Ljava/lang/String;)V

    .line 397
    :cond_b
    sget-object v4, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndTime(J)V

    .line 399
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getEndCpuTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndCpuTime(J)V

    .line 400
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->calculateDuration()V

    .line 401
    sget-object v3, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setMessageCount(J)V

    .line 406
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v3

    cmpl-double v6, v3, v9

    if-lez v6, :cond_11

    .line 411
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getDuration()D

    move-result-wide v3

    cmpl-double v6, v3, v13

    if-lez v6, :cond_d

    .line 412
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getNativeStackTrace(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setNativeStaicTrace(Ljava/lang/String;)V

    .line 417
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 418
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getStackTrace(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStackTrace(Ljava/lang/String;)V

    .line 420
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "LAG"

    .line 422
    invoke-virtual {v1, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setType(Ljava/lang/String;)V

    :cond_f
    if-nez v7, :cond_10

    if-nez v5, :cond_10

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    .line 430
    invoke-direct {v0, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->add2Queue(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V

    .line 431
    sget-object v2, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 434
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->add2Queue(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V

    goto :goto_3

    .line 435
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "END"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-nez v7, :cond_12

    if-nez v5, :cond_12

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    .line 442
    invoke-direct {v0, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->add2Queue(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V

    .line 443
    sget-object v2, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 446
    :cond_12
    invoke-direct/range {p0 .. p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->add2Queue(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V

    goto :goto_3

    .line 452
    :cond_13
    sget-object v2, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :goto_3
    iput-object v1, v0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mPreMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    return-void
.end method

.method public registerCallback(Lcom/netease/androidcrashhandler/anr/messageQueue/MessageCallback;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendInputEventLagFinish()V
    .locals 5

    const-string v0, "trace"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LooperMessageLoggingManager [sendInputEventLagFinish] startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mLock:[B

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->hasStartTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v1, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :try_start_1
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->clone()Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 148
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 149
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartTime(J)V

    .line 150
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartInfo(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getMessageCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setMessageCount(J)V

    .line 152
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setType(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getNativeStaicTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setNativeStaicTrace(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getActionTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    .line 155
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStackTrace(Ljava/lang/String;)V

    .line 157
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndTime(J)V

    const-string v2, "<<<<< Finished Input Lag Finish"

    .line 158
    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndInfo(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->calculateDuration()V

    const-string v2, "trace"

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LooperMessageLoggingManager [handleMessageInfo] \u6536\u96c6\u5230InputQueue  [A]MSG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->addInput2Queue(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V

    .line 162
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->clean()V

    .line 165
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendInputEventLagMessage(Ljava/lang/String;)V
    .locals 6

    const-string v0, "trace"

    const-string v1, "LooperMessageLoggingManager [sendInputEventLagMessage] start"

    .line 127
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mLock:[B

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0x77359400

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartTime(J)V

    .line 130
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    const-string v2, ">>>>> Dispatching Input Lag Start"

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartInfo(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->addMessageCount()V

    .line 132
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    const-string v2, "INPUT"

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setType(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-virtual {v1, p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setNativeStaicTrace(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setActionTime(J)V

    .line 135
    iget-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mInputLagMessage:Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getJavaMainThreadStackTrack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStackTrace(Ljava/lang/String;)V

    const-string p1, "trace"

    const-string v1, "LooperMessageLoggingManager [sendInputEventLagMessage] end"

    .line 136
    invoke-static {p1, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "LooperMessageLoggingManager [start] start"

    .line 237
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->start()V

    .line 239
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;-><init>(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method

.method public unregisterCallback(Lcom/netease/androidcrashhandler/anr/messageQueue/MessageCallback;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
