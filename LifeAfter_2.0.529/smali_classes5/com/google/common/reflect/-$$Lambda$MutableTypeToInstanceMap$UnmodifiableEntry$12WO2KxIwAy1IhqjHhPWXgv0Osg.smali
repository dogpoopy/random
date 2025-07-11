.class public final synthetic Lcom/google/common/reflect/-$$Lambda$MutableTypeToInstanceMap$UnmodifiableEntry$12WO2KxIwAy1IhqjHhPWXgv0Osg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/reflect/-$$Lambda$MutableTypeToInstanceMap$UnmodifiableEntry$12WO2KxIwAy1IhqjHhPWXgv0Osg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/reflect/-$$Lambda$MutableTypeToInstanceMap$UnmodifiableEntry$12WO2KxIwAy1IhqjHhPWXgv0Osg;

    invoke-direct {v0}, Lcom/google/common/reflect/-$$Lambda$MutableTypeToInstanceMap$UnmodifiableEntry$12WO2KxIwAy1IhqjHhPWXgv0Osg;-><init>()V

    sput-object v0, Lcom/google/common/reflect/-$$Lambda$MutableTypeToInstanceMap$UnmodifiableEntry$12WO2KxIwAy1IhqjHhPWXgv0Osg;->INSTANCE:Lcom/google/common/reflect/-$$Lambda$MutableTypeToInstanceMap$UnmodifiableEntry$12WO2KxIwAy1IhqjHhPWXgv0Osg;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;->lambda$12WO2KxIwAy1IhqjHhPWXgv0Osg(Ljava/util/Map$Entry;)Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method
