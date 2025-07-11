.class public final synthetic Lcom/google/common/net/-$$Lambda$MediaType$80OieyKHZh_RBS1khue7h_2Rgmw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/net/-$$Lambda$MediaType$80OieyKHZh_RBS1khue7h_2Rgmw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/net/-$$Lambda$MediaType$80OieyKHZh_RBS1khue7h_2Rgmw;

    invoke-direct {v0}, Lcom/google/common/net/-$$Lambda$MediaType$80OieyKHZh_RBS1khue7h_2Rgmw;-><init>()V

    sput-object v0, Lcom/google/common/net/-$$Lambda$MediaType$80OieyKHZh_RBS1khue7h_2Rgmw;->INSTANCE:Lcom/google/common/net/-$$Lambda$MediaType$80OieyKHZh_RBS1khue7h_2Rgmw;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/net/MediaType;->lambda$computeToString$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
