.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$Striped$9T9YG9NNu1OO2QdjwF9mmQAwHDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$Striped$9T9YG9NNu1OO2QdjwF9mmQAwHDE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/-$$Lambda$Striped$9T9YG9NNu1OO2QdjwF9mmQAwHDE;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/-$$Lambda$Striped$9T9YG9NNu1OO2QdjwF9mmQAwHDE;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/-$$Lambda$Striped$9T9YG9NNu1OO2QdjwF9mmQAwHDE;->INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$Striped$9T9YG9NNu1OO2QdjwF9mmQAwHDE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/common/util/concurrent/Striped;->lambda$lazyWeakLock$0()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method
