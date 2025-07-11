.class public final synthetic Landroidx/core/util/-$$Lambda$Predicate$c1xpOSQv97DVgcNkcl2YqANiPCE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroidx/core/util/-$$Lambda$Predicate$c1xpOSQv97DVgcNkcl2YqANiPCE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/util/-$$Lambda$Predicate$c1xpOSQv97DVgcNkcl2YqANiPCE;

    invoke-direct {v0}, Landroidx/core/util/-$$Lambda$Predicate$c1xpOSQv97DVgcNkcl2YqANiPCE;-><init>()V

    sput-object v0, Landroidx/core/util/-$$Lambda$Predicate$c1xpOSQv97DVgcNkcl2YqANiPCE;->INSTANCE:Landroidx/core/util/-$$Lambda$Predicate$c1xpOSQv97DVgcNkcl2YqANiPCE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic and(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$and(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Landroidx/core/util/Predicate;
    .locals 1

    invoke-static {p0}, Landroidx/core/util/Predicate$-CC;->$default$negate(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$or(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Landroidx/core/util/Predicate$-CC;->lambda$isEqual$3(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
