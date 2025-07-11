.class public final synthetic Lcom/google/common/reflect/-$$Lambda$0SGStd0oa85ahG7so0zg-KQ3eHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/reflect/-$$Lambda$0SGStd0oa85ahG7so0zg-KQ3eHE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/reflect/-$$Lambda$0SGStd0oa85ahG7so0zg-KQ3eHE;

    invoke-direct {v0}, Lcom/google/common/reflect/-$$Lambda$0SGStd0oa85ahG7so0zg-KQ3eHE;-><init>()V

    sput-object v0, Lcom/google/common/reflect/-$$Lambda$0SGStd0oa85ahG7so0zg-KQ3eHE;->INSTANCE:Lcom/google/common/reflect/-$$Lambda$0SGStd0oa85ahG7so0zg-KQ3eHE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    return p1
.end method
