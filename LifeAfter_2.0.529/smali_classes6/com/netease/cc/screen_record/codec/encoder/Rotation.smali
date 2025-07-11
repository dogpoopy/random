.class public final enum Lcom/netease/cc/screen_record/codec/encoder/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/cc/screen_record/codec/encoder/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/cc/screen_record/codec/encoder/Rotation;

.field public static final enum NORMAL:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

.field public static final enum ROTATION_180:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

.field public static final enum ROTATION_270:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

.field public static final enum ROTATION_90:Lcom/netease/cc/screen_record/codec/encoder/Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/netease/cc/screen_record/codec/encoder/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->NORMAL:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    new-instance v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    const/4 v2, 0x1

    const-string v3, "ROTATION_90"

    invoke-direct {v0, v3, v2}, Lcom/netease/cc/screen_record/codec/encoder/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_90:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    new-instance v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    const/4 v3, 0x2

    const-string v4, "ROTATION_180"

    invoke-direct {v0, v4, v3}, Lcom/netease/cc/screen_record/codec/encoder/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_180:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    new-instance v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    const/4 v4, 0x3

    const-string v5, "ROTATION_270"

    invoke-direct {v0, v5, v4}, Lcom/netease/cc/screen_record/codec/encoder/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_270:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    .line 20
    sget-object v5, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->NORMAL:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_90:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_180:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_270:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->$VALUES:[Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/netease/cc/screen_record/codec/encoder/Rotation;
    .locals 2

    if-eqz p0, :cond_4

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x168

    if-ne p0, v0, :cond_0

    .line 50
    sget-object p0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->NORMAL:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    return-object p0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is an unknown rotation. Needs to be either 0, 90, 180 or 270!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    sget-object p0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_270:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    return-object p0

    .line 48
    :cond_2
    sget-object p0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_180:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    return-object p0

    .line 47
    :cond_3
    sget-object p0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_90:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    return-object p0

    .line 46
    :cond_4
    sget-object p0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->NORMAL:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/cc/screen_record/codec/encoder/Rotation;
    .locals 1

    .line 20
    const-class v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    return-object p0
.end method

.method public static values()[Lcom/netease/cc/screen_record/codec/encoder/Rotation;
    .locals 1

    .line 20
    sget-object v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->$VALUES:[Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    invoke-virtual {v0}, [Lcom/netease/cc/screen_record/codec/encoder/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 2

    .line 29
    sget-object v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation$1;->$SwitchMap$com$netease$cc$screen_record$codec$encoder$Rotation:[I

    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10e

    return v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown Rotation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
