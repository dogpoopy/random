.class public final enum Lcom/twitter/Extractor$Entity$Type;
.super Ljava/lang/Enum;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/Extractor$Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twitter/Extractor$Entity$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twitter/Extractor$Entity$Type;

.field public static final enum CASHTAG:Lcom/twitter/Extractor$Entity$Type;

.field public static final enum HASHTAG:Lcom/twitter/Extractor$Entity$Type;

.field public static final enum MENTION:Lcom/twitter/Extractor$Entity$Type;

.field public static final enum URL:Lcom/twitter/Extractor$Entity$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/twitter/Extractor$Entity$Type;

    const/4 v1, 0x0

    const-string v2, "URL"

    invoke-direct {v0, v2, v1}, Lcom/twitter/Extractor$Entity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/Extractor$Entity$Type;->URL:Lcom/twitter/Extractor$Entity$Type;

    new-instance v0, Lcom/twitter/Extractor$Entity$Type;

    const/4 v2, 0x1

    const-string v3, "HASHTAG"

    invoke-direct {v0, v3, v2}, Lcom/twitter/Extractor$Entity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/Extractor$Entity$Type;->HASHTAG:Lcom/twitter/Extractor$Entity$Type;

    new-instance v0, Lcom/twitter/Extractor$Entity$Type;

    const/4 v3, 0x2

    const-string v4, "MENTION"

    invoke-direct {v0, v4, v3}, Lcom/twitter/Extractor$Entity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/Extractor$Entity$Type;->MENTION:Lcom/twitter/Extractor$Entity$Type;

    new-instance v0, Lcom/twitter/Extractor$Entity$Type;

    const/4 v4, 0x3

    const-string v5, "CASHTAG"

    invoke-direct {v0, v5, v4}, Lcom/twitter/Extractor$Entity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/Extractor$Entity$Type;->CASHTAG:Lcom/twitter/Extractor$Entity$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/twitter/Extractor$Entity$Type;

    .line 12
    sget-object v5, Lcom/twitter/Extractor$Entity$Type;->URL:Lcom/twitter/Extractor$Entity$Type;

    aput-object v5, v0, v1

    sget-object v1, Lcom/twitter/Extractor$Entity$Type;->HASHTAG:Lcom/twitter/Extractor$Entity$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/Extractor$Entity$Type;->MENTION:Lcom/twitter/Extractor$Entity$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/Extractor$Entity$Type;->CASHTAG:Lcom/twitter/Extractor$Entity$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twitter/Extractor$Entity$Type;->$VALUES:[Lcom/twitter/Extractor$Entity$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/Extractor$Entity$Type;
    .locals 1

    .line 12
    const-class v0, Lcom/twitter/Extractor$Entity$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twitter/Extractor$Entity$Type;

    return-object p0
.end method

.method public static values()[Lcom/twitter/Extractor$Entity$Type;
    .locals 1

    .line 12
    sget-object v0, Lcom/twitter/Extractor$Entity$Type;->$VALUES:[Lcom/twitter/Extractor$Entity$Type;

    invoke-virtual {v0}, [Lcom/twitter/Extractor$Entity$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/Extractor$Entity$Type;

    return-object v0
.end method
