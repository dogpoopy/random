.class public final enum Lcom/netease/mrzhna/RestrictTo$Scope;
.super Ljava/lang/Enum;
.source "RestrictTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mrzhna/RestrictTo$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/mrzhna/RestrictTo$Scope;

.field public static final enum GROUP_ID:Lcom/netease/mrzhna/RestrictTo$Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LIBRARY:Lcom/netease/mrzhna/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP:Lcom/netease/mrzhna/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP_PREFIX:Lcom/netease/mrzhna/RestrictTo$Scope;

.field public static final enum SUBCLASSES:Lcom/netease/mrzhna/RestrictTo$Scope;

.field public static final enum TESTS:Lcom/netease/mrzhna/RestrictTo$Scope;


# direct methods
.method private static synthetic $values()[Lcom/netease/mrzhna/RestrictTo$Scope;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netease/mrzhna/RestrictTo$Scope;

    .line 45
    sget-object v1, Lcom/netease/mrzhna/RestrictTo$Scope;->LIBRARY:Lcom/netease/mrzhna/RestrictTo$Scope;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mrzhna/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/netease/mrzhna/RestrictTo$Scope;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mrzhna/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Lcom/netease/mrzhna/RestrictTo$Scope;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mrzhna/RestrictTo$Scope;->GROUP_ID:Lcom/netease/mrzhna/RestrictTo$Scope;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mrzhna/RestrictTo$Scope;->TESTS:Lcom/netease/mrzhna/RestrictTo$Scope;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mrzhna/RestrictTo$Scope;->SUBCLASSES:Lcom/netease/mrzhna/RestrictTo$Scope;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/netease/mrzhna/RestrictTo$Scope;

    const-string v1, "LIBRARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/mrzhna/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mrzhna/RestrictTo$Scope;->LIBRARY:Lcom/netease/mrzhna/RestrictTo$Scope;

    .line 56
    new-instance v0, Lcom/netease/mrzhna/RestrictTo$Scope;

    const-string v1, "LIBRARY_GROUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netease/mrzhna/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mrzhna/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/netease/mrzhna/RestrictTo$Scope;

    .line 70
    new-instance v0, Lcom/netease/mrzhna/RestrictTo$Scope;

    const-string v1, "LIBRARY_GROUP_PREFIX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/netease/mrzhna/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mrzhna/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Lcom/netease/mrzhna/RestrictTo$Scope;

    .line 78
    new-instance v0, Lcom/netease/mrzhna/RestrictTo$Scope;

    const-string v1, "GROUP_ID"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/netease/mrzhna/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mrzhna/RestrictTo$Scope;->GROUP_ID:Lcom/netease/mrzhna/RestrictTo$Scope;

    .line 84
    new-instance v0, Lcom/netease/mrzhna/RestrictTo$Scope;

    const-string v1, "TESTS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/netease/mrzhna/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mrzhna/RestrictTo$Scope;->TESTS:Lcom/netease/mrzhna/RestrictTo$Scope;

    .line 92
    new-instance v0, Lcom/netease/mrzhna/RestrictTo$Scope;

    const-string v1, "SUBCLASSES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netease/mrzhna/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mrzhna/RestrictTo$Scope;->SUBCLASSES:Lcom/netease/mrzhna/RestrictTo$Scope;

    .line 45
    invoke-static {}, Lcom/netease/mrzhna/RestrictTo$Scope;->$values()[Lcom/netease/mrzhna/RestrictTo$Scope;

    move-result-object v0

    sput-object v0, Lcom/netease/mrzhna/RestrictTo$Scope;->$VALUES:[Lcom/netease/mrzhna/RestrictTo$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mrzhna/RestrictTo$Scope;
    .locals 1

    .line 45
    const-class v0, Lcom/netease/mrzhna/RestrictTo$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mrzhna/RestrictTo$Scope;

    return-object p0
.end method

.method public static values()[Lcom/netease/mrzhna/RestrictTo$Scope;
    .locals 1

    .line 45
    sget-object v0, Lcom/netease/mrzhna/RestrictTo$Scope;->$VALUES:[Lcom/netease/mrzhna/RestrictTo$Scope;

    invoke-virtual {v0}, [Lcom/netease/mrzhna/RestrictTo$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mrzhna/RestrictTo$Scope;

    return-object v0
.end method
