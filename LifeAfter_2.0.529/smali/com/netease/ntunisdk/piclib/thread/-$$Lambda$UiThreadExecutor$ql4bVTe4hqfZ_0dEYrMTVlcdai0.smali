.class public final synthetic Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$UiThreadExecutor$ql4bVTe4hqfZ_0dEYrMTVlcdai0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic INSTANCE:Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$UiThreadExecutor$ql4bVTe4hqfZ_0dEYrMTVlcdai0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$UiThreadExecutor$ql4bVTe4hqfZ_0dEYrMTVlcdai0;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$UiThreadExecutor$ql4bVTe4hqfZ_0dEYrMTVlcdai0;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$UiThreadExecutor$ql4bVTe4hqfZ_0dEYrMTVlcdai0;->INSTANCE:Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$UiThreadExecutor$ql4bVTe4hqfZ_0dEYrMTVlcdai0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;->lambda$ql4bVTe4hqfZ_0dEYrMTVlcdai0(Ljava/lang/Runnable;)V

    return-void
.end method
