.class public Lcom/netease/cc/screen_record/codec/RecorderConfig;
.super Ljava/lang/Object;
.source "RecorderConfig.java"


# static fields
.field public static enableCompareEglContext:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static enableSingleEglCore:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static enableSyncRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static enableSyncVideoCacheBuffer:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/RecorderConfig;->enableSyncVideoCacheBuffer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/RecorderConfig;->enableSyncRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/RecorderConfig;->enableSingleEglCore:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/RecorderConfig;->enableCompareEglContext:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
