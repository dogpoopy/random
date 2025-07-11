.class public final enum Lcom/netease/ntunisdk/core/network/UrlMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/core/network/UrlMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/netease/ntunisdk/core/network/UrlMethod;

.field public static final enum GET:Lcom/netease/ntunisdk/core/network/UrlMethod;

.field public static final enum POST:Lcom/netease/ntunisdk/core/network/UrlMethod;

.field public static final enum PUT:Lcom/netease/ntunisdk/core/network/UrlMethod;

.field private static final synthetic c:[Lcom/netease/ntunisdk/core/network/UrlMethod;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/netease/ntunisdk/core/network/UrlMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/core/network/UrlMethod;->GET:Lcom/netease/ntunisdk/core/network/UrlMethod;

    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlMethod;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/netease/ntunisdk/core/network/UrlMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/core/network/UrlMethod;->POST:Lcom/netease/ntunisdk/core/network/UrlMethod;

    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlMethod;

    const-string v1, "PUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/netease/ntunisdk/core/network/UrlMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/core/network/UrlMethod;->PUT:Lcom/netease/ntunisdk/core/network/UrlMethod;

    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlMethod;

    const-string v1, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v1}, Lcom/netease/ntunisdk/core/network/UrlMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/core/network/UrlMethod;->DELETE:Lcom/netease/ntunisdk/core/network/UrlMethod;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/ntunisdk/core/network/UrlMethod;

    sget-object v1, Lcom/netease/ntunisdk/core/network/UrlMethod;->GET:Lcom/netease/ntunisdk/core/network/UrlMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/core/network/UrlMethod;->POST:Lcom/netease/ntunisdk/core/network/UrlMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/core/network/UrlMethod;->PUT:Lcom/netease/ntunisdk/core/network/UrlMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/ntunisdk/core/network/UrlMethod;->DELETE:Lcom/netease/ntunisdk/core/network/UrlMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netease/ntunisdk/core/network/UrlMethod;->c:[Lcom/netease/ntunisdk/core/network/UrlMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netease/ntunisdk/core/network/UrlMethod;->a:I

    iput-object p4, p0, Lcom/netease/ntunisdk/core/network/UrlMethod;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/core/network/UrlMethod;
    .locals 1

    const-class v0, Lcom/netease/ntunisdk/core/network/UrlMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/core/network/UrlMethod;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/core/network/UrlMethod;
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/core/network/UrlMethod;->c:[Lcom/netease/ntunisdk/core/network/UrlMethod;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/core/network/UrlMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/core/network/UrlMethod;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/network/UrlMethod;->b:Ljava/lang/String;

    return-object v0
.end method
