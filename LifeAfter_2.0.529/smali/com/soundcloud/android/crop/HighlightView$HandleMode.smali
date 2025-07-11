.class final enum Lcom/soundcloud/android/crop/HighlightView$HandleMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soundcloud/android/crop/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HandleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/soundcloud/android/crop/HighlightView$HandleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/soundcloud/android/crop/HighlightView$HandleMode;

.field public static final enum Always:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

.field public static final enum Changing:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

.field public static final enum Never:Lcom/soundcloud/android/crop/HighlightView$HandleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 56
    new-instance v0, Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    const-string v1, "Changing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/HighlightView$HandleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Changing:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    new-instance v1, Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    const-string v3, "Always"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/soundcloud/android/crop/HighlightView$HandleMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Always:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    new-instance v3, Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    const-string v5, "Never"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/soundcloud/android/crop/HighlightView$HandleMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Never:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->$VALUES:[Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/soundcloud/android/crop/HighlightView$HandleMode;
    .locals 1

    .line 56
    const-class v0, Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    return-object p0
.end method

.method public static values()[Lcom/soundcloud/android/crop/HighlightView$HandleMode;
    .locals 1

    .line 56
    sget-object v0, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->$VALUES:[Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    invoke-virtual {v0}, [Lcom/soundcloud/android/crop/HighlightView$HandleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    return-object v0
.end method
