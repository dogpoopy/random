.class public final synthetic Lcom/google/common/net/-$$Lambda$LakKpP12fwJbqpP-KMn44CEkoP8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/net/-$$Lambda$LakKpP12fwJbqpP-KMn44CEkoP8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/net/-$$Lambda$LakKpP12fwJbqpP-KMn44CEkoP8;

    invoke-direct {v0}, Lcom/google/common/net/-$$Lambda$LakKpP12fwJbqpP-KMn44CEkoP8;-><init>()V

    sput-object v0, Lcom/google/common/net/-$$Lambda$LakKpP12fwJbqpP-KMn44CEkoP8;->INSTANCE:Lcom/google/common/net/-$$Lambda$LakKpP12fwJbqpP-KMn44CEkoP8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p1

    return-object p1
.end method
