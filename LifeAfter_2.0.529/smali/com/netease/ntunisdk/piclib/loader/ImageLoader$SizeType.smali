.class public final enum Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;
.super Ljava/lang/Enum;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/loader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

.field public static final enum FULL_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

.field public static final enum HALF_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

.field public static final enum MICRO:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

.field public static final enum REAL_DOUBLE_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

.field public static final enum REAL_FULL_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

.field public static final enum REAL_HALF_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 41
    new-instance v0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    const-string v1, "MICRO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->MICRO:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    new-instance v1, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    const-string v3, "HALF_SCREEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->HALF_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    new-instance v3, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    const-string v5, "FULL_SCREEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->FULL_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    new-instance v5, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    const-string v7, "REAL_HALF_SCREEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->REAL_HALF_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    new-instance v7, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    const-string v9, "REAL_FULL_SCREEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->REAL_FULL_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    new-instance v9, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    const-string v11, "REAL_DOUBLE_SCREEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->REAL_DOUBLE_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 40
    sput-object v11, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->$VALUES:[Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 40
    const-class v0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;
    .locals 1

    .line 40
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->$VALUES:[Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    return-object v0
.end method
