.class public Lcom/gbwhatsapq/yo/TouchImageView;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbwhatsapq/yo/TouchImageView$e;,
        Lcom/gbwhatsapq/yo/TouchImageView$State;,
        Lcom/gbwhatsapq/yo/TouchImageView$d;,
        Lcom/gbwhatsapq/yo/TouchImageView$c;,
        Lcom/gbwhatsapq/yo/TouchImageView$b;,
        Lcom/gbwhatsapq/yo/TouchImageView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/gbwhatsapq/yo/TouchImageView$b;

.field private c:[F

.field private d:Landroid/view/GestureDetector;

.field private e:Landroid/view/ScaleGestureDetector;

.field private f:Z

.field private g:F

.field private h:F

.field private i:Landroid/graphics/Matrix;

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Landroid/graphics/Matrix;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Lcom/gbwhatsapq/yo/TouchImageView$State;

.field private t:F

.field private u:F

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/gbwhatsapq/yo/TouchImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/gbwhatsapq/yo/TouchImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/gbwhatsapq/yo/TouchImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(FFF)F
    .locals 0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method static synthetic a(Lcom/gbwhatsapq/yo/TouchImageView;)F
    .locals 0

    iget p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    return p0
.end method

.method private static a(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_2

    const/high16 v0, -0x50000000

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    return p2

    :cond_1
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method private a(FFZ)Landroid/graphics/PointF;
    .locals 5

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sub-float v2, p1, v2

    mul-float v2, v2, v0

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageWidth()F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    sub-float v3, p2, v3

    mul-float v3, v3, v1

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageHeight()F

    move-result v4

    div-float/2addr v3, v4

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method static synthetic a(Lcom/gbwhatsapq/yo/TouchImageView;FF)Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gbwhatsapq/yo/TouchImageView;->a(FFZ)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/gbwhatsapq/yo/TouchImageView;Lcom/gbwhatsapq/yo/TouchImageView$b;)Lcom/gbwhatsapq/yo/TouchImageView$b;
    .locals 0

    iput-object p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->b:Lcom/gbwhatsapq/yo/TouchImageView$b;

    return-object p1
.end method

.method private a()V
    .locals 11

    invoke-virtual {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->o:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->w:I

    int-to-float v1, v1

    int-to-float v2, v9

    div-float/2addr v1, v2

    iget v3, p0, Lcom/gbwhatsapq/yo/TouchImageView;->v:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v3, p0, Lcom/gbwhatsapq/yo/TouchImageView;->v:I

    int-to-float v5, v3

    mul-float v6, v4, v1

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/gbwhatsapq/yo/TouchImageView;->w:I

    int-to-float v7, v6

    mul-float v8, v2, v1

    sub-float/2addr v7, v8

    int-to-float v6, v6

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/gbwhatsapq/yo/TouchImageView;->h:F

    int-to-float v3, v3

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/gbwhatsapq/yo/TouchImageView;->g:F

    iget v3, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/gbwhatsapq/yo/TouchImageView;->r:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->o:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    iget v3, p0, Lcom/gbwhatsapq/yo/TouchImageView;->h:F

    div-float/2addr v3, v2

    iget v2, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    mul-float v3, v3, v2

    aput v3, v1, v6

    const/4 v3, 0x4

    iget v5, p0, Lcom/gbwhatsapq/yo/TouchImageView;->g:F

    div-float/2addr v5, v4

    mul-float v5, v5, v2

    aput v5, v1, v3

    const/4 v3, 0x2

    aget v4, v1, v3

    const/4 v3, 0x5

    aget v10, v1, v3

    const/4 v3, 0x2

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->n:F

    mul-float v5, v1, v2

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageWidth()F

    move-result v6

    iget v7, p0, Lcom/gbwhatsapq/yo/TouchImageView;->q:I

    iget v8, p0, Lcom/gbwhatsapq/yo/TouchImageView;->w:I

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/gbwhatsapq/yo/TouchImageView;->a(IFFFIII)V

    const/4 v2, 0x5

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->m:F

    iget v3, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    mul-float v4, v1, v3

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageHeight()F

    move-result v5

    iget v6, p0, Lcom/gbwhatsapq/yo/TouchImageView;->p:I

    iget v7, p0, Lcom/gbwhatsapq/yo/TouchImageView;->v:I

    move-object v1, p0

    move v3, v10

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/gbwhatsapq/yo/TouchImageView;->a(IFFFIII)V

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v7, v1

    div-float/2addr v5, v1

    invoke-virtual {v0, v7, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput v8, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    iput-boolean v6, p0, Lcom/gbwhatsapq/yo/TouchImageView;->r:Z

    :goto_1
    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/gbwhatsapq/yo/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method

.method private a(IFFFIII)V
    .locals 2

    int-to-float p6, p6

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p4, p6

    if-gez v1, :cond_0

    iget-object p2, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    int-to-float p3, p7

    const/4 p4, 0x0

    aget p4, p2, p4

    mul-float p3, p3, p4

    sub-float/2addr p6, p3

    mul-float p6, p6, v0

    aput p6, p2, p1

    return-void

    :cond_0
    const/4 p7, 0x0

    cmpl-float p7, p2, p7

    if-lez p7, :cond_1

    iget-object p2, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    sub-float/2addr p4, p6

    mul-float p4, p4, v0

    neg-float p3, p4

    aput p3, p2, p1

    return-void

    :cond_1
    iget-object p7, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p5, p5

    mul-float p5, p5, v0

    add-float/2addr p2, p5

    div-float/2addr p2, p3

    mul-float p2, p2, p4

    mul-float p6, p6, v0

    sub-float/2addr p2, p6

    neg-float p2, p2

    aput p2, p7, p1

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iput-object p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->a:Landroid/content/Context;

    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/gbwhatsapq/yo/TouchImageView$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/gbwhatsapq/yo/TouchImageView$d;-><init>(Lcom/gbwhatsapq/yo/TouchImageView;B)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->e:Landroid/view/ScaleGestureDetector;

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/gbwhatsapq/yo/TouchImageView$c;

    invoke-direct {v2, p0, v3}, Lcom/gbwhatsapq/yo/TouchImageView$c;-><init>(Lcom/gbwhatsapq/yo/TouchImageView;B)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->d:Landroid/view/GestureDetector;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->o:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    iput p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->k:F

    const/high16 p1, 0x40400000    # 3.0f

    iput p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->j:F

    iget p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->k:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float p1, p1, v1

    iput p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->u:F

    iget p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->j:F

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float p1, p1, v1

    iput p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->t:F

    iput-boolean v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->f:Z

    iget-object p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/gbwhatsapq/yo/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/gbwhatsapq/yo/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object p1, Lcom/gbwhatsapq/yo/TouchImageView$State;->NONE:Lcom/gbwhatsapq/yo/TouchImageView$State;

    invoke-direct {p0, p1}, Lcom/gbwhatsapq/yo/TouchImageView;->setState(Lcom/gbwhatsapq/yo/TouchImageView$State;)V

    new-instance p1, Lcom/gbwhatsapq/yo/TouchImageView$e;

    invoke-direct {p1, p0, v3}, Lcom/gbwhatsapq/yo/TouchImageView$e;-><init>(Lcom/gbwhatsapq/yo/TouchImageView;B)V

    invoke-virtual {p0, p1}, Lcom/gbwhatsapq/yo/TouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/gbwhatsapq/yo/TouchImageView;FFFZ)V
    .locals 4

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/gbwhatsapq/yo/TouchImageView;->u:F

    iget v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->t:F

    goto :goto_0

    :cond_0
    iget p4, p0, Lcom/gbwhatsapq/yo/TouchImageView;->k:F

    iget v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->j:F

    :goto_0
    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    mul-float v2, v1, p1

    iput v2, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    iget v2, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    iput v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    div-float p1, v0, v1

    goto :goto_1

    :cond_1
    cmpg-float v0, v2, p4

    if-gez v0, :cond_2

    iput p4, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    div-float p1, p4, v1

    :cond_2
    :goto_1
    iget-object p4, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/gbwhatsapq/yo/TouchImageView;Lcom/gbwhatsapq/yo/TouchImageView$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/gbwhatsapq/yo/TouchImageView;->setState(Lcom/gbwhatsapq/yo/TouchImageView$State;)V

    return-void
.end method

.method static synthetic a(Lcom/gbwhatsapq/yo/TouchImageView;Ljava/lang/Runnable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/gbwhatsapq/yo/TouchImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/gbwhatsapq/yo/TouchImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static b(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p2, p1

    sub-float/2addr p1, p2

    if-gtz v1, :cond_0

    move p2, p1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    cmpg-float v1, p0, p1

    if-gez v1, :cond_1

    neg-float p0, p0

    add-float/2addr p0, p1

    return p0

    :cond_1
    cmpl-float p1, p0, p2

    if-lez p1, :cond_2

    neg-float p0, p0

    add-float/2addr p0, p2

    return p0

    :cond_2
    return v0
.end method

.method static synthetic b(Lcom/gbwhatsapq/yo/TouchImageView;)I
    .locals 0

    iget p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->w:I

    return p0
.end method

.method static synthetic b(Lcom/gbwhatsapq/yo/TouchImageView;FF)Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iget-object p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    const/4 v2, 0x5

    aget p1, p1, v2

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageHeight()F

    move-result v2

    invoke-virtual {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p2, p0

    mul-float v2, v2, p2

    add-float/2addr p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-virtual {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->fixTrans()V

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageWidth()F

    move-result v0

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->w:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    const/4 v2, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageWidth()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    aput v1, v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageHeight()F

    move-result v0

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->v:I

    int-to-float v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    const/4 v2, 0x5

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageHeight()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    aput v1, v0, v2

    :cond_1
    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method static synthetic c(Lcom/gbwhatsapq/yo/TouchImageView;)I
    .locals 0

    iget p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->v:I

    return p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->o:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    iget v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->g:F

    iput v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->m:F

    iget v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->h:F

    iput v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->n:F

    iget v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->v:I

    iput v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->p:I

    iget v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->w:I

    iput v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->q:I

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/gbwhatsapq/yo/TouchImageView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private d()V
    .locals 1

    iget-boolean v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->r:Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/gbwhatsapq/yo/TouchImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->b()V

    return-void
.end method

.method static synthetic f(Lcom/gbwhatsapq/yo/TouchImageView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/gbwhatsapq/yo/TouchImageView;)[F
    .locals 0

    iget-object p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    return-object p0
.end method

.method private getImageHeight()F
    .locals 2

    iget v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->g:F

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getImageWidth()F
    .locals 2

    iget v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->h:F

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    mul-float v0, v0, v1

    return v0
.end method

.method static synthetic h(Lcom/gbwhatsapq/yo/TouchImageView;)F
    .locals 0

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageWidth()F

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/gbwhatsapq/yo/TouchImageView;)F
    .locals 0

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageHeight()F

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/gbwhatsapq/yo/TouchImageView;)Lcom/gbwhatsapq/yo/TouchImageView$State;
    .locals 0

    iget-object p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->s:Lcom/gbwhatsapq/yo/TouchImageView$State;

    return-object p0
.end method

.method static synthetic k(Lcom/gbwhatsapq/yo/TouchImageView;)F
    .locals 0

    iget p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->k:F

    return p0
.end method

.method static synthetic l(Lcom/gbwhatsapq/yo/TouchImageView;)F
    .locals 0

    iget p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->j:F

    return p0
.end method

.method static synthetic m(Lcom/gbwhatsapq/yo/TouchImageView;)Lcom/gbwhatsapq/yo/TouchImageView$b;
    .locals 0

    iget-object p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->b:Lcom/gbwhatsapq/yo/TouchImageView$b;

    return-object p0
.end method

.method static synthetic n(Lcom/gbwhatsapq/yo/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->e:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic o(Lcom/gbwhatsapq/yo/TouchImageView;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->d:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private setState(Lcom/gbwhatsapq/yo/TouchImageView$State;)V
    .locals 0

    iput-object p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->s:Lcom/gbwhatsapq/yo/TouchImageView$State;

    return-void
.end method


# virtual methods
.method public fixTrans()V
    .locals 4

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v0, v0, v2

    iget v2, p0, Lcom/gbwhatsapq/yo/TouchImageView;->w:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageWidth()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/gbwhatsapq/yo/TouchImageView;->b(FFF)F

    move-result v1

    iget v2, p0, Lcom/gbwhatsapq/yo/TouchImageView;->v:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getImageHeight()F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/gbwhatsapq/yo/TouchImageView;->b(FFF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    return-void
.end method

.method public getCurrentZoom()F
    .locals 1

    iget v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    return v0
.end method

.method public getDrawablePointFromTouchPoint(FF)Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/gbwhatsapq/yo/TouchImageView;->a(FFZ)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getDrawablePointFromTouchPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/gbwhatsapq/yo/TouchImageView;->a(FFZ)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getMaxZoom()F
    .locals 1

    iget v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->j:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    iget v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->k:F

    return v0
.end method

.method public maintainZoomAfterSetImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->f:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1, v2, v1}, Lcom/gbwhatsapq/yo/TouchImageView;->a(III)I

    move-result p1

    iput p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->w:I

    invoke-static {p2, v3, v0}, Lcom/gbwhatsapq/yo/TouchImageView;->a(III)I

    move-result p1

    iput p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->v:I

    iget p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->w:I

    iget p2, p0, Lcom/gbwhatsapq/yo/TouchImageView;->v:I

    invoke-virtual {p0, p1, p2}, Lcom/gbwhatsapq/yo/TouchImageView;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->a()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/gbwhatsapq/yo/TouchImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "saveScale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    const-string v0, "matrix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    iget-object v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->o:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    const-string v0, "matchViewHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->m:F

    const-string v0, "matchViewWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->n:F

    const-string v0, "viewHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->p:I

    const-string v0, "viewWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gbwhatsapq/yo/TouchImageView;->q:I

    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->l:F

    const-string v2, "saveScale"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->g:F

    const-string v2, "matchViewHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->h:F

    const-string v2, "matchViewWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->w:I

    const-string v2, "viewWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->v:I

    const-string v2, "viewHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->c:[F

    const-string v2, "matrix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->d()V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->c()V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->a()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->d()V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->c()V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->a()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->d()V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->c()V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->a()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->d()V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->c()V

    invoke-direct {p0}, Lcom/gbwhatsapq/yo/TouchImageView;->a()V

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 1

    iput p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->j:F

    iget p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->j:F

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->t:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 1

    iput p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->k:F

    iget p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->k:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/gbwhatsapq/yo/TouchImageView;->u:F

    return-void
.end method
