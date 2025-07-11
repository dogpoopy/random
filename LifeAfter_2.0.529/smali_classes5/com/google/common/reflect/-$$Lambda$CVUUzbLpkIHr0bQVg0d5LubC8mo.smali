.class public final synthetic Lcom/google/common/reflect/-$$Lambda$CVUUzbLpkIHr0bQVg0d5LubC8mo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/reflect/-$$Lambda$CVUUzbLpkIHr0bQVg0d5LubC8mo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/reflect/-$$Lambda$CVUUzbLpkIHr0bQVg0d5LubC8mo;

    invoke-direct {v0}, Lcom/google/common/reflect/-$$Lambda$CVUUzbLpkIHr0bQVg0d5LubC8mo;-><init>()V

    sput-object v0, Lcom/google/common/reflect/-$$Lambda$CVUUzbLpkIHr0bQVg0d5LubC8mo;->INSTANCE:Lcom/google/common/reflect/-$$Lambda$CVUUzbLpkIHr0bQVg0d5LubC8mo;

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

    check-cast p1, Lcom/google/common/reflect/ClassPath$ClassInfo;

    invoke-virtual {p1}, Lcom/google/common/reflect/ClassPath$ClassInfo;->isTopLevel()Z

    move-result p1

    return p1
.end method
