.class final enum Lcom/soundcloud/android/crop/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soundcloud/android/crop/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/soundcloud/android/crop/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

.field public static final enum None:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 55
    new-instance v0, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->None:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    new-instance v1, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    const-string v3, "Move"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->Move:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    new-instance v3, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    const-string v5, "Grow"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->Grow:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->$VALUES:[Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/soundcloud/android/crop/HighlightView$ModifyMode;
    .locals 1

    .line 55
    const-class v0, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    return-object p0
.end method

.method public static values()[Lcom/soundcloud/android/crop/HighlightView$ModifyMode;
    .locals 1

    .line 55
    sget-object v0, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->$VALUES:[Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    return-object v0
.end method
