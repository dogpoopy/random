.class public final synthetic Lcom/google/common/collect/-$$Lambda$TreeBasedTable$bh1RDyITfULE4yCOWYbPhy01CXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$TreeBasedTable$bh1RDyITfULE4yCOWYbPhy01CXM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$TreeBasedTable$bh1RDyITfULE4yCOWYbPhy01CXM;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$TreeBasedTable$bh1RDyITfULE4yCOWYbPhy01CXM;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$TreeBasedTable$bh1RDyITfULE4yCOWYbPhy01CXM;->INSTANCE:Lcom/google/common/collect/-$$Lambda$TreeBasedTable$bh1RDyITfULE4yCOWYbPhy01CXM;

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

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/google/common/collect/TreeBasedTable;->lambda$createColumnKeyIterator$0(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
