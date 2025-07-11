.class Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextProperty"
.end annotation


# instance fields
.field private final mHeightPerLine:I

.field private final mLines:[Ljava/lang/String;

.field private final mMaxWidth:I

.field private final mTotalHeight:I


# direct methods
.method constructor <init>(II[Ljava/lang/String;)V
    .locals 0

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mMaxWidth:I

    .line 520
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mHeightPerLine:I

    .line 521
    array-length p1, p3

    mul-int p2, p2, p1

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mTotalHeight:I

    .line 522
    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mLines:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I
    .locals 0

    .line 509
    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mTotalHeight:I

    return p0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I
    .locals 0

    .line 509
    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$200(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)[Ljava/lang/String;
    .locals 0

    .line 509
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mLines:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I
    .locals 0

    .line 509
    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mHeightPerLine:I

    return p0
.end method
