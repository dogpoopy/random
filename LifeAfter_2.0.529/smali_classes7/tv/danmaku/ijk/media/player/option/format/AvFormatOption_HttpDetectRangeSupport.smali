.class public final Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;
.super Ljava/lang/Object;
.source "AvFormatOption_HttpDetectRangeSupport.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/option/AvFormatOption;


# static fields
.field public static Disable:Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;

.field public static Enable:Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;->Enable:Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;

    .line 10
    new-instance v0, Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;->Disable:Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "http-detect-range-support"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/option/format/AvFormatOption_HttpDetectRangeSupport;->mValue:Ljava/lang/String;

    return-object v0
.end method
